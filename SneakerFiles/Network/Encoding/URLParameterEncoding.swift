//
//  URLParameterEncoding.swift
//  SneakerFiles
//
//

import Foundation

public struct URLParameterEncoding: ParameterEncoder {
    public static func encode(urlRequest: inout URLRequest, with parameters: Parameters) throws {
        guard let url = urlRequest.url else { throw NetworkErrors.missingURL }

        if var urlComponents = URLComponents(url: url, resolvingAgainstBaseURL: false), !parameters.isEmpty {
            urlComponents.queryItems = [URLQueryItem]()

            for (key, value) in parameters {
                let queryItem  = URLQueryItem(name: key, value: "\(value)".addingPercentEncoding(withAllowedCharacters: .urlHostAllowed))
                urlComponents.queryItems?.append(queryItem)
            }

            urlRequest.url = urlComponents.url
        }

        if urlRequest.value(forHTTPHeaderField: "Content-Type") == nil {
            urlRequest.setValue("application/x-wwww-form-urlencoded; charsetutf-8", forHTTPHeaderField: "Content-Type")
        }
    }

    public static func encodeNoQueryItem(urlRequest: inout URLRequest, with parameters: String) throws {
        
    }
}
