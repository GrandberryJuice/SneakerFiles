//
//  PopularKicksViewModel.swift
//  SneakerFiles
//
//  Created by Kgrandbe on 7/28/21.
//

import Foundation

class PopularKicksViewModel: ObservableObject {
    @Published var popularKicks: [PopularKicksModel]?
    
    private var networkManager = NetworkManager()
    
    func getPopularKicks() {
        networkManager.getPopularKicks { [self] result in
            switch result {
            case .success(let popularKicks):
                self.popularKicks = popularKicks
            case .failure(let error):
                switch error {
                case .unableToComplete:
                    print("Wasn't able to parse")
                default:
                    print("The data was invalid")
                }
            }
        }
    }
}
