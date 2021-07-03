//
//  CalculatorXCUITestsUITests.swift
//  CalculatorXCUITestsUITests
//
//  Created by Ryan T on 7/3/21.
//  Copyright © 2021 Ryan Touvell. All rights reserved.
//

import XCTest

class Calculator_TestsUITests: XCTestCase {
    let calculatorApp = XCUIApplication(bundleIdentifier: "com.apple.calculator")
    
    struct buttonLabels {
        static let allClear = "all clear"
        static let clear = "clear"
        static let equals = "="
        static let substract = "−"
        static let multiply = "×"
        static let point = "."
        static let add = "+"
        static let negative = "+/−"
        static let divide = "÷"
        static let percent = "%"
        static let one = "one"
        static let two = "two"
        static let three = "three"
        static let four = "four"
        static let five = "five"
        static let six = "six"
        static let seven = "seven"
        static let eight = "eight"
        static let nine = "nine"
        static let zero = "zero"
    }
    
    struct displayView {
        static let calculatorDisplay = "main display"
    }
    
    struct numberLabels {
        static let one = "1"
        static let two = "2"
        static let three = "3"
        static let four = "4"
        static let five = "5"
        static let six = "6"
        static let seven = "7"
        static let eight = "8"
        static let nine = "9"
        static let zero = "0"
    }
    
    
    var calculatorDisplay: XCUIElement { calculatorApp.staticTexts[displayView.calculatorDisplay].firstMatch }
    var allClearButton: XCUIElement { calculatorApp.buttons[buttonLabels.allClear].firstMatch }
    var clearButton: XCUIElement { calculatorApp.buttons[buttonLabels.clear].firstMatch }
    var equalsButton: XCUIElement { calculatorApp.buttons[buttonLabels.equals].firstMatch }
    var substractButton: XCUIElement { calculatorApp.buttons[buttonLabels.substract].firstMatch }
    var addButton: XCUIElement { calculatorApp.buttons[buttonLabels.add].firstMatch }
    var percentButton: XCUIElement { calculatorApp.buttons[buttonLabels.percent].firstMatch }
    var divideButton: XCUIElement { calculatorApp.buttons[buttonLabels.divide].firstMatch }
    var negativeButton: XCUIElement { calculatorApp.buttons[buttonLabels.negative].firstMatch }
    var twoButton: XCUIElement { calculatorApp.buttons[buttonLabels.two].firstMatch }
    var threeButton: XCUIElement { calculatorApp.buttons[buttonLabels.three].firstMatch }
    var nineButton: XCUIElement { calculatorApp.buttons[buttonLabels.nine].firstMatch }
    var zeroButton: XCUIElement { calculatorApp.buttons[buttonLabels.zero].firstMatch }
    var oneButton: XCUIElement { calculatorApp.buttons[buttonLabels.one].firstMatch }
    var fiveButton: XCUIElement { calculatorApp.buttons[buttonLabels.five].firstMatch }
    var fourButton: XCUIElement { calculatorApp.buttons[buttonLabels.four].firstMatch }
    var sixButton: XCUIElement { calculatorApp.buttons[buttonLabels.six].firstMatch }
    var eightButton: XCUIElement { calculatorApp.buttons[buttonLabels.eight].firstMatch }
    var sevenButton: XCUIElement { calculatorApp.buttons[buttonLabels.seven].firstMatch }

    override func setUp() {
        calculatorApp.launch()
    }

    override func tearDown() {
        calculatorApp.terminate()
    }

    func testOpenCalculator() {
        XCTAssertTrue(calculatorApp.exists, "Application is not opened")
        XCTAssertTrue(allClearButton.title == "all clear", "AC button is not in view, check if calculator window opened.")
        XCTAssertTrue(calculatorDisplay.value as! String == numberLabels.zero, "Entry of calculator has been made. Make sure nothing is pressed.")
    }

    func testEightInput() {
        eightButton.click()
        
        XCTAssertTrue(calculatorDisplay.value as! String == numberLabels.eight, "Number 8 was not found in the view display. Make sure the button is being pressed.")
    }
    
    func testClear() {
        eightButton.click()
        clearButton.click()
        
        XCTAssertTrue(calculatorDisplay.value as! String == "0", "Entry of calculator has been made. Make sure nothing is pressed.")
    }
    
    func testAddition() {
        eightButton.click()
        addButton.click()
        nineButton.click()
        equalsButton.click()
        
        XCTAssertTrue(calculatorDisplay.value as! String == "17", "Entry of calculator is wrong. Should be 17 in the view display.")
    }
    
    func testDoubleAddition() {
        eightButton.click()
        addButton.click()
        nineButton.click()
        for _ in 0...3 {
            equalsButton.click()
        }
        
        XCTAssertTrue(calculatorDisplay.value as! String == "44", "Entry of calculator is wrong. Should be 44 in the view display.")
    }
    
    func testChangeAdditionToSubtraction() {
        nineButton.click()
        addButton.click()
        substractButton.click()
        twoButton.click()
        equalsButton.click()
        
        XCTAssertTrue(calculatorDisplay.value as! String == "7", "Entry of calculator is wrong. Should be 7 in the view display.")
    }
}
