//
//  BasicViewUITests.swift
//  CalculatorXCUITestsUITests
//
//  Created by Ryan T on 7/3/21.
//  Copyright © 2021 Ryan Touvell. All rights reserved.
//

import XCTest

class BasicViewUITests: XCTestCase {
    let basicView = BasicView()
    let menuBar = MenuBar()
    var app: XCUIApplication { basicView.app }
    
    override func setUp() {
        app.launch()
        menuBar.enableBasicView()
    }

    override func tearDown() {
        app.terminate()
    }

    func testOpenCalculator() {
        XCTAssertTrue(app.exists, "Application is not opened")
        XCTAssertTrue(basicView.allClearButton.title == "all clear", "AC button is not in view, check if calculator window opened.")
        basicView.displayViewMatches(expectedResult: "0")
    }

    func testNumberInput() {
        XCTContext.runActivity(named: "Click number and confirm display matches") { _ in
            basicView.eightButton.click()
            basicView.displayViewMatches(expectedResult: "8")
        }
    }
    
    func testClear() {
        XCTContext.runActivity(named: "Click number and clear the input") { _ in
            basicView.eightButton.click()
        basicView.clearButton.click()
        basicView.displayViewMatches(expectedResult: "0")
        }
    }
    
    func testAddition() {
        basicView.simpleOperation("Test simple addition - 8 + 9",leftHand: basicView.eightButton, operation: basicView.addButton, rightHand: basicView.nineButton, expectedResult: "17")
    }
    
    func testMultiplication() {
        basicView.simpleOperation("Test simple multiplication - 8 * 9",leftHand: basicView.eightButton, operation: basicView.multiplyButton, rightHand: basicView.nineButton, expectedResult: "72")
    }
    
    func testDivision() {
        basicView.simpleOperation("Test simple division - 8 / 4",leftHand: basicView.eightButton, operation: basicView.divideButton, rightHand: basicView.fourButton, expectedResult: "2")
    }
    
    func testDoubleAddition() {
        basicView.simpleOperation("Test simple addition - 8 + 9",leftHand: basicView.eightButton, operation: basicView.addButton, rightHand: basicView.nineButton, expectedResult: "17")
        
        XCTContext.runActivity(named: "Repeat '=' and check results") { _ in
            for _ in 0...2 {
                basicView.equalsButton.click()
            }
            
            basicView.displayViewMatches(expectedResult: "44")
        }
    }
    
    func testChangeAdditionToSubtraction() {
        XCTContext.runActivity(named: "Click multiply operator then change to minus") { _ in
            basicView.nineButton.click()
            basicView.multiplyButton.click()
            basicView.substractButton.click()
            basicView.twoButton.click()
            basicView.equalsButton.click()
            
            basicView.displayViewMatches(expectedResult: "7")
        }
    }
    
    func testNegativePositiveButton() {
        XCTContext.runActivity(named: "Click multiply operator then change to minus") { _ in
            basicView.fiveButton.click()
            basicView.negativeButton.click()
            
            basicView.displayViewMatches(expectedResult: "-5")
            
            basicView.negativeButton.click()
            
            basicView.displayViewMatches(expectedResult: "5")
        }
    }
    
    func testDoubleNegativeOperation() {
        basicView.simpleOperation("Test negative subtraction 3 - (-4)",leftHand: basicView.threeButton, operation: basicView.substractButton, rightHand: basicView.fourButton, expectedResult: "7", negativeButtonBool: true)
    }
    
    func testPercentValue() {
        XCTContext.runActivity(named: "Click multiply operator then change to minus") { _ in
            menuBar.decimalPlaceZeroMenuItemButton.click()
            basicView.fiveButton.click()
            basicView.percentButton.click()
            
            basicView.displayViewMatches(expectedResult: "5e-2")
        }
    }
    
    func testDecimalValueTwo() {
        menuBar.decimalPlaceTwoMenuItemButton.click()
        
        basicView.simpleOperation("Test decminal value from 7/4",leftHand: basicView.sevenButton, operation: basicView.divideButton, rightHand: basicView.fourButton, expectedResult: "1.75")
    }
    
    func testDecimalValueFifteen() {
        menuBar.decimalPlaceFifteenMenuItemButton.click()
        
        basicView.simpleOperation("Test decminal value from 3/9",leftHand: basicView.threeButton, operation: basicView.divideButton, rightHand: basicView.nineButton, expectedResult: "0.333333333333333")
    }
    
    func testMaxDisplayCap() {
        XCTContext.runActivity(named: "Repeat '=' and check results") { _ in
            for _ in 0...39 {
                basicView.oneButton.click()
            }
            
            basicView.displayViewMatches(expectedResult: "1111111111111111111111111111111111111110")
        }
    }
}
