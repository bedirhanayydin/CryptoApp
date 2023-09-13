//
//  CoinDataService.swift
//  CryptoApp
//
//  Created by bedirhan on 12.09.2023.
//

import Foundation
import Combine
class CoinDataService {
    
    @Published var allCoins: [CoinModel] = []
    var coinSubscription: AnyCancellable?
    
    init() {
        getCoins()
    }
    
    private func getCoins() {
        guard let url = URL(string: "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=250&page=1&sparkline=true&price_change_percentage=24h")
        else { return }
        
        //verilen URL ile yapılan ağ isteği, varsayılan QoS düzeyi ile başka bir iş parçacığında çalıştırılmış olur. Bu, uygulamanın daha iyi performans göstermesini sağlar,çünkü ağ isteği ana iş parçacığı üzerinde çalışırken uygulama arayüzünün kullanıcı etkileşimlerine cevap vermesini engellemeyecektir.
            coinSubscription =
            NetworkingManager.download(url: url)
            .decode(type: [CoinModel].self, decoder: JSONDecoder())
            .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: { [weak self] returnedCoins in
                self?.allCoins = returnedCoins
                self?.coinSubscription?.cancel()
            })
        //        URLSession.shared.dataTaskPublisher(for: url)
        //            .subscribe(on: DispatchQueue.global(qos: .default))
        //            .tryMap { (output) -> Data in
        //                guard let response = output.response as? HTTPURLResponse, response.statusCode >= 200 && response.statusCode < 300 else {
        //                    throw URLError(.badServerResponse)
        //                }
        //                return output.data
        //            }
        //            .receive(on: DispatchQueue.main)
        // .decode(type: [CoinModel].self, decoder: JSONDecoder())
        //            .sink { completion in
        //                NetworkingManager.handleCompletion(completion: completion)
        //            } receiveValue: { [weak self] returnedCoins in
        //                self?.allCoins = returnedCoins
        //                self?.coinSubscription?.cancel()
        //            }
    }
}
