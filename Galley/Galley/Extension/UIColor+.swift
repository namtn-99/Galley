//
//  UIColor+.swift
//  Galley
//
//  Created by NamTrinh on 27/04/2024.
//

import UIKit

extension UIColor {
    convenience init(hex: String, alpha: CGFloat = 1.0) {
        var formattedHex = hex
        if hex.hasPrefix("#") {
            formattedHex.remove(at: hex.startIndex)
        }

        // Convert hex string to integer
        var rgbValue: UInt64 = 0
        Scanner(string: formattedHex).scanHexInt64(&rgbValue)

        // Extract RGB components
        let red = CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0
        let green = CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0
        let blue = CGFloat(rgbValue & 0x0000FF) / 255.0

        // Create UIColor from RGB values
        self.init(red: red, green: green, blue: blue, alpha: alpha)
    }
}
