//
//  CategoryPost+NetworkManager.swift
//  SneakerFiles
//
//

import Foundation

extension NetworkManager {
    func getPopularKicks(completion: @escaping(_ error: String?, _ message: String?) ->()) {
        popularKicksRouter.request(.getPopularKicks) { (data, response, error) in
            if error != nil {
                completion("Please check your network connection", nil)
            }

            if let response = response as? HTTPURLResponse {
                let result = self.handleNetworkResponse(response)

                switch result {
                case .success:
                    guard let responseData = data else {
                        completion(NetworkResponse.noData.rawValue, nil)
                        return
                    }
                    
                    print(responseData)

                    completion(nil, "Message was deleted")
                case .failure(let networkFailureError):
                    completion(networkFailureError, nil)
                }
            }
        }
    }
}


