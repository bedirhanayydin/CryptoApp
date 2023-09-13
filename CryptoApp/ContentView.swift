//
//  ContentView.swift
//  CryptoApp
//
//  Created by bedirhan on 10.09.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, accent!")
                .foregroundColor(Color.theme.accent)
            Text("Hello, secondary text!")
                .foregroundColor(Color.theme.secondaryText)
            Text("Hello, red!")
                .foregroundColor(Color.theme.red)
            Text("Hello, green!")
                .foregroundColor(Color.theme.green)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
