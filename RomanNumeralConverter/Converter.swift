//
//  Converter.swift
//  RomanNumeralConverter
//
//  Created by Bartłomiej Świerad on 10/01/2019.
//  Copyright © 2019 Bartłomiej Świerad. All rights reserved.
//

import Foundation

class Converter {
    func testInputValue(_ number: Int) -> Bool {
        return number > 0 && number < 4000
    }
    
    func convert(_ number: Int) -> String {
        if number > 3999 {
            return ""
        }
        var result = ""
        var localNumber = number
        let numberSymbols: [(number: Int, symbol: String)] = [
            (1000, "M"),
            (900, "CM"),
            (500, "D"),
            (400, "CD"),
            (100, "C"),
            (90, "XC"),
            (50, "L"),
            (40, "XL"),
            (10, "X"),
            (9, "IX"),
            (5, "V"),
            (4, "IV"),
            (1, "I")
        ]
        for numberSymbol in numberSymbols {
            while localNumber >= numberSymbol.number {
                result += numberSymbol.symbol
                localNumber -= numberSymbol.number
            }
        }
        return result
    }
}
