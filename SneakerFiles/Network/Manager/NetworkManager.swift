//
//  NetworkManager.swift
//  SneakerFiles
//
//

import Foundation
enum NetworkEnvironment {
    case development
    case qa
    case production
}

struct NetworkManager {
    static let environment: NetworkEnvironment = .development
    public let popularKicksRouter = Router<PopularKicksAPI>()

    enum NetworkResponse: String {
        case success
        case authenticationError = "Sorry you need to be authenticated first"
        case badRequest = "Bad Request"
        case outdated = "The url you requested is outdated"
        case failed = "Network request failed"
        case noData = "Response returned with no data to decode"
        case unableToDecode = "We could not decode the response"
    }

    enum Result<String> {
        case success
        case failure(String)
    }

    public func handleNetworkResponse(_ response: HTTPURLResponse) ->Result<String> {
        switch response.statusCode {
        case 200...299: return .success
        case 401...500: return .failure(NetworkResponse.authenticationError.rawValue)
        case 501...599: return .failure(NetworkResponse.badRequest.rawValue)
        case 600: return .failure(NetworkResponse.outdated.rawValue)
        default: return .failure(NetworkResponse.failed.rawValue)
        }
    }
}


