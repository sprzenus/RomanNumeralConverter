//
//  ConverterTests.swift
//  RomanNumeralConverterTests
//
//  Created by Bartłomiej Świerad on 10/01/2019.
//  Copyright © 2019 Bartłomiej Świerad. All rights reserved.
//

import Foundation
import XCTest
@testable import RomanNumeralConverter

class ConverterTests: XCTestCase {
    
    let converter = Converter()
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testConversionForOne() {
        let result = converter.convert(1)
        XCTAssertEqual(result, "I", "Conversion for 1 is incorrect")
    }
    
    func testConversionForTwo() {
        let result = converter.convert(2)
        XCTAssertEqual(result, "II", "Conversion for 2 is incorrect")
    }
    
    func testConversionForFive() {
        let result = converter.convert(5)
        XCTAssertEqual(result, "V", "Conversion for 5 is incorrect")
    }
    
    func testConversionForSix() {
        let result = converter.convert(6)
        XCTAssertEqual(result, "VI", "Conversion for 6 is incorrect")
    }
    
    func testConversionForTen() {
        let result = converter.convert(10)
        XCTAssertEqual(result, "X", "Conversion for 10 is incorrect")
    }
    
    func testConversionForTwenty() {
        let result = converter.convert(20)
        XCTAssertEqual(result, "XX", "Conversion for 20 is incorrect")
    }
    
    func testConversionForFour() {
        let result = converter.convert(4)
        XCTAssertEqual(result, "IV", "Conversion for 4 is incorrect")
    }
    
    func testConversionForNine() {
        let result = converter.convert(9)
        XCTAssertEqual(result, "IX", "Conversion for 9 is incorrect")
    }
    
    func testConversionForZero() {
        let result = converter.convert(0)
        XCTAssertEqual(result, "", "Conversion for 0 is incorrect")
    }
    
    func testConversionFor3999() {
        let result = converter.convert(3999)
        XCTAssertEqual(result, "MMMCMXCIX", "Conversion for 3999 is incorrect")
    }
    
    func testConversionFor4000() {
        let result = converter.convert(4000)
        XCTAssertEqual(result, "", "Conversion for 4000 is incorrect")
    }
    
    func testInputValueTestingFor0() {
        let result = converter.testInputValue(0)
        XCTAssertFalse(result)
    }
    
    func testInputValueTestingFor1() {
        let result = converter.testInputValue(1)
        XCTAssertTrue(result)
    }
    
    func testInputValueTestingFor4000() {
        let result = converter.testInputValue(4000)
        XCTAssertFalse(result)
    }
}
