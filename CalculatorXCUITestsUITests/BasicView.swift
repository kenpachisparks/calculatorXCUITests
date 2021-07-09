//
//  CalculatorView.swift
//  CalculatorXCUITestsUITests
//
//  Created by Ryan T on 7/8/21.
//  Copyright © 2021 Ryan Touvell. All rights reserved.
//

import XCTest

class BasicView: NSViewController {
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
    
    public struct numberLabels {
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
    
    var calculatorDisplay: XCUIElement { calculatorApp.staticTexts[displayView.calculatorDisplay] }
	var allClearButton: XCUIElement { calculatorApp.windows.firstMatch.buttons[buttonLabels.allClear].firstMatch }
	var clearButton: XCUIElement { calculatorApp.windows.firstMatch.buttons[buttonLabels.clear].firstMatch }
    var equalsButton: XCUIElement { calculatorApp.buttons[buttonLabels.equals].firstMatch }
    var substractButton: XCUIElement { calculatorApp.buttons[buttonLabels.substract].firstMatch }
    var addButton: XCUIElement { calculatorApp.buttons[buttonLabels.add].firstMatch }
    var percentButton: XCUIElement { calculatorApp.buttons[buttonLabels.percent].firstMatch }
	var multiplyButton: XCUIElement { calculatorApp.buttons[buttonLabels.multiply].firstMatch }
    var divideButton: XCUIElement { calculatorApp.buttons[buttonLabels.divide].firstMatch }
    var negativeButton: XCUIElement { calculatorApp.buttons[buttonLabels.negative].firstMatch }
    var twoButton: XCUIElement { calculatorApp.buttons[buttonLabels.two] }
    var threeButton: XCUIElement { calculatorApp.buttons[buttonLabels.three] }
    var nineButton: XCUIElement { calculatorApp.buttons[buttonLabels.nine] }
    var zeroButton: XCUIElement { calculatorApp.buttons[buttonLabels.zero] }
    var oneButton: XCUIElement { calculatorApp.buttons[buttonLabels.one] }
    var fiveButton: XCUIElement { calculatorApp.buttons[buttonLabels.five] }
    var fourButton: XCUIElement { calculatorApp.buttons[buttonLabels.four] }
    var sixButton: XCUIElement { calculatorApp.buttons[buttonLabels.six] }
    var eightButton: XCUIElement { calculatorApp.buttons[buttonLabels.eight] }
    var sevenButton: XCUIElement { calculatorApp.buttons[buttonLabels.seven] }
	
	func testSimpleOperation(_ description: String, leftHand: XCUIElement, operation: XCUIElement, rightHand: XCUIElement, expectedResult: String) {
		
		XCTContext.runActivity(named: description) { _ in
			leftHand.click()
			operation.click()
			rightHand.click()
			equalsButton.click()
			XCTAssertTrue(calculatorDisplay.value as! String == expectedResult, "Unexpected result: expected \(expectedResult), found \(calculatorDisplay.value ?? "").")
		}
	}
}
