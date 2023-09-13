//
//  CircleButton.swift
//  CryptoApp
//
//  Created by bedirhan on 10.09.2023.
//

import SwiftUI

struct CircleButton: View {
    let iconName: String
    var body: some View {
        Image(systemName: iconName)
            .font(.headline)
            .foregroundColor(Color.theme.accent)
            .frame(width: 45, height: 45)
            .background(
                Circle()
                    .foregroundColor(Color.theme.background)
            )
            .shadow(
                color: Color.theme.accent.opacity(0.25),
                radius: 10, x: 0, y: 0)
        
    }
}

struct CircleButton_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CircleButton(iconName: "info")
                .previewLayout(.sizeThatFits)
            CircleButton(iconName: "heart.fill")
                .previewLayout(.sizeThatFits)
                .colorScheme(.dark)
        }
    }
}
