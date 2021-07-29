//
//  PopularKicksEndPoint.swift
//  SneakerFiles
//
//

import Foundation

enum PopularKicksNetworkEnvironment {
    case qa
    case production
    case development
}

public enum PopularKicksAPI {
    case getPopularKicks
}

extension PopularKicksAPI: EndPointType {
    var baseURL: URL {
        guard let url = URL(string: environmentBaseURL) else {fatalError("baseURL could not be used")}
        return url
    }

    var path: String {
        switch self {
        case .getPopularKicks:
            return ""
        }
    }

    var httpMethod: HTTPMethod {
        switch self {
        case .getPopularKicks:
            return .get
        }

    }

    var task: HTTPTask {
        switch self {
        case .getPopularKicks:
            return .requestParameters(bodyParameters: nil, urlParameters: nil)
        }
    }

    var header: HTTPHeaders? {
        return nil
    }

    var environmentBaseURL: String {
        switch NetworkManager.environment {
        case.production:
            return ""
        case .qa:
            return ""
        case .development:
            return "http://localhost:4000/home"
        }
    }
}
