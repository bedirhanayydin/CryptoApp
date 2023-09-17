//
//  UIApplication.swift
//  CryptoApp
//
//  Created by bedirhan on 15.09.2023.
//

import Foundation
import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
}
