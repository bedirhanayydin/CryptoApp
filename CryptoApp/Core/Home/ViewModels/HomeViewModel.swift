//
//  HomeViewModel.swift
//  CryptoApp
//
//  Created by bedirhan on 11.09.2023.
//

import Foundation
import Combine
class HomeViewModel: ObservableObject {
    @Published var allCoins: [CoinModel] = []
    @Published var portfolioCoins: [CoinModel] = []
    
    private let dataSerice = CoinDataService()
    private var cancelables = Set<AnyCancellable>()
    
    init() {
//        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
//            self.allCoins.append(DeveloperPreview.instance.coin)
//            self.portfolioCoins.append(DeveloperPreview.instance.coin)
//        }
        addSubscribers()
    }
    
    func addSubscribers() {
        dataSerice.$allCoins
            .sink { [weak self] returnedCoins in
                self?.allCoins = returnedCoins
            }
            .store(in: &cancelables)
    }
}
