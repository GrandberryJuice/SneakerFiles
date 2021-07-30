//
//  CategoryPost+NetworkManager.swift
//  SneakerFiles
//
//

import UIKit
enum APIError:Error {
    case invalidData
    case unableToComplete
}

extension NetworkManager {
    func getPopularKicks(completion: @escaping(Result<[PopularKicksModel], APIError>) -> Void) {
        popularKicksRouter.request(.getPopularKicks) { (data, response, error) in
            if error != nil {
                completion(.failure(.unableToComplete))
            }

            if let response = response as? HTTPURLResponse {
                let result = self.handleNetworkResponse(response)

                switch result {
                case .success:
                    guard let responseData = data else {
                        completion(.failure(.unableToComplete))
                        return
                    }
                    
                    do {
                        let apiResponse = try JSONDecoder().decode([PopularKicksModel].self, from: responseData)
                        completion(.success(apiResponse))
                    }catch(let error) {
                        completion(.failure(.invalidData))
                    }
                case .failure(_):
                    completion(.failure(.unableToComplete))
                }
            }
        }
    }
}


