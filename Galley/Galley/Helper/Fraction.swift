//
//  Fraction.swift
//  Galley
//
//  Created by trinh.ngoc.nam on 4/27/24.
//

import Foundation

struct Fraction: CustomStringConvertible {
    var numerator: Int
    var denominator: Int

    // Initialize and automatically simplify the fraction
    init(numerator: Int, denominator: Int) {
        assert(denominator != 0, "Denominator cannot be zero.")
        self.numerator = numerator
        self.denominator = denominator
    }

    mutating func divide() {
        let gcdValue = gcd(numerator, denominator)
        numerator = numerator / gcdValue * (denominator < 0 ? -1 : 1)  // handle negative signs
        denominator = abs(denominator) / gcdValue
    }
    // Function to calculate the greatest common divisor
    private func gcd(_ a: Int, _ b: Int) -> Int {
        var a = abs(a)
        var b = abs(b)
        while b != 0 {
            let temp = b
            b = a % b
            a = temp
        }
        return a
    }

    // Description for printing
    var description: String {
        if denominator == 1 {
            return "\(numerator)" // return as an integer if the denominator is 1
        }
        return "\(numerator)/\(denominator)"
    }
}
