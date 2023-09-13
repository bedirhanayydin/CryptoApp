//
//  CryptoAppApp.swift
//  CryptoApp
//
//  Created by bedirhan on 10.09.2023.
//

import SwiftUI

@main
struct CryptoApp: App {
    
    @StateObject var vm = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
            .environmentObject(vm)
        }
    }
}
