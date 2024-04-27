//
//  ColorTestModel.swift
//  Galley
//
//  Created by NamTrinh on 27/04/2024.
//

import UIKit

enum ColorTestType: Int {
    case red = 0
    case green
    case blue
    case yellow
    case blueSky
    case pink
    case black
    case white
    case gradient
    
    var color: UIColor? {
        switch self {
        case .red:
            return #colorLiteral(red: 0.9960784314, green: 0, blue: 0, alpha: 1)
        case .green:
            return #colorLiteral(red: 0, green: 1, blue: 0.003921568627, alpha: 1)
        case .blue:
            return #colorLiteral(red: 0, green: 0, blue: 0.9960784314, alpha: 1)
        case .yellow:
            return #colorLiteral(red: 1, green: 1, blue: 0.003921568627, alpha: 1)
        case .blueSky:
            return #colorLiteral(red: 0.003921568627, green: 1, blue: 1, alpha: 1)
        case .pink:
            return #colorLiteral(red: 1, green: 0, blue: 0.9960784314, alpha: 1)
        case .black:
            return #colorLiteral(red: 0.003921568627, green: 0.003921568627, blue: 0.003921568627, alpha: 1)
        case .white:
            return .white
        case .gradient:
            return nil
        }
    }
}
