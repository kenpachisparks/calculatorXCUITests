//
//  BasicView.swift
//  CalculatorXCUITestsUITests
//
//  Created by Ryan T on 7/8/21.
//  Copyright © 2021 Ryan Touvell. All rights reserved.
//

import XCTest

class BasicView: NSViewController {
    let app = XCUIApplication(bundleIdentifier: "com.apple.calculator")
        
    struct basicViewButtonLabels {
        static let allClear = "all clear"
        static let clear = "clear"
        static let equals = "equals"
        static let substract = "subtract"
        static let multiply = "multiply"
        static let point = "point"
        static let add = "add"
        static let negative = "negate"
        static let divide = "divide"
        static let percent = "percent"
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
    
    var calculatorDisplay: XCUIElement { app.staticTexts[displayView.calculatorDisplay] }
    var allClearButton: XCUIElement { app.windows.firstMatch.buttons[basicViewButtonLabels.allClear].firstMatch }
    var clearButton: XCUIElement { app.windows.firstMatch.buttons[basicViewButtonLabels.clear].firstMatch }
    var equalsButton: XCUIElement { app.windows.firstMatch.buttons[basicViewButtonLabels.equals].firstMatch }
    var substractButton: XCUIElement { app.windows.firstMatch.buttons[basicViewButtonLabels.substract].firstMatch }
    var addButton: XCUIElement { app.windows.firstMatch.buttons[basicViewButtonLabels.add].firstMatch }
    var percentButton: XCUIElement { app.windows.firstMatch.buttons[basicViewButtonLabels.percent].firstMatch }
    var multiplyButton: XCUIElement { app.windows.firstMatch.buttons[basicViewButtonLabels.multiply].firstMatch }
    var divideButton: XCUIElement { app.windows.firstMatch.buttons[basicViewButtonLabels.divide].firstMatch }
    var negativeButton: XCUIElement { app.windows.firstMatch.buttons[basicViewButtonLabels.negative].firstMatch }
    var twoButton: XCUIElement { app.buttons[basicViewButtonLabels.two] }
    var threeButton: XCUIElement { app.buttons[basicViewButtonLabels.three] }
    var nineButton: XCUIElement { app.buttons[basicViewButtonLabels.nine] }
    var zeroButton: XCUIElement { app.buttons[basicViewButtonLabels.zero] }
    var oneButton: XCUIElement { app.buttons[basicViewButtonLabels.one] }
    var fiveButton: XCUIElement { app.buttons[basicViewButtonLabels.five] }
    var fourButton: XCUIElement { app.buttons[basicViewButtonLabels.four] }
    var sixButton: XCUIElement { app.buttons[basicViewButtonLabels.six] }
    var eightButton: XCUIElement { app.buttons[basicViewButtonLabels.eight] }
    var sevenButton: XCUIElement { app.buttons[basicViewButtonLabels.seven] }
    
    func simpleOperation(_ description: String, leftHand: XCUIElement, operation: XCUIElement, rightHand: XCUIElement, expectedResult: String, negativeButtonBool: Bool = false) {
        XCTContext.runActivity(named: description) { _ in
            leftHand.click()
            operation.click()
            rightHand.click()
            
            if negativeButtonBool {
                negativeButton.click()
            }
            
            equalsButton.click()
            displayViewMatches(expectedResult: expectedResult)
        }
    }
    
    func displayViewMatches(expectedResult: String, displayMatchBool: Bool = true) {
        XCTContext.runActivity(named: "Check if \(expectedResult) is in display.") { _ in
            if displayMatchBool {
                XCTAssertTrue(calculatorDisplay.value as! String == expectedResult, "Unexpected result: expected \(expectedResult), found \(calculatorDisplay.value ?? "").")
            }
            else {
                XCTAssertFalse(calculatorDisplay.value as! String == expectedResult, "Unexpected result: expected \(expectedResult), found \(calculatorDisplay.value ?? "").")
            }
            
        }
    }
}
