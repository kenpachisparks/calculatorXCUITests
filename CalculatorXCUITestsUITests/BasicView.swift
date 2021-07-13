//
//  BasicView.swift
//  CalculatorXCUITestsUITests
//
//  Created by Ryan T on 7/8/21.
//  Copyright © 2021 Ryan Touvell. All rights reserved.
//

import XCTest

public class BasicView: NSViewController {
    var appWindow = ViewVariablePage().appWindow
    
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
        static let notANumber = "Not a number"
        static let inputMode = "input mode"
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
    
    var calculatorDisplay: XCUIElement { appWindow.staticTexts[displayView.calculatorDisplay].firstMatch }
    var inputModeDisplay: XCUIElement { appWindow.staticTexts[displayView.inputMode].firstMatch }
    var allClearButton: XCUIElement { appWindow.buttons[basicViewButtonLabels.allClear].firstMatch }
    var clearButton: XCUIElement { appWindow.buttons[basicViewButtonLabels.clear].firstMatch }
    var equalsButton: XCUIElement { appWindow.buttons[basicViewButtonLabels.equals].firstMatch }
    var pointButton: XCUIElement { appWindow.buttons[basicViewButtonLabels.point].firstMatch }
    var substractButton: XCUIElement { appWindow.buttons[basicViewButtonLabels.substract].firstMatch }
    var addButton: XCUIElement { appWindow.buttons[basicViewButtonLabels.add].firstMatch }
    var percentButton: XCUIElement { appWindow.buttons[basicViewButtonLabels.percent].firstMatch }
    var multiplyButton: XCUIElement { appWindow.buttons[basicViewButtonLabels.multiply].firstMatch }
    var divideButton: XCUIElement { appWindow.buttons[basicViewButtonLabels.divide].firstMatch }
    var negativeButton: XCUIElement { appWindow.buttons[basicViewButtonLabels.negative].firstMatch }
    var twoButton: XCUIElement { appWindow.buttons[basicViewButtonLabels.two].firstMatch }
    var threeButton: XCUIElement { appWindow.buttons[basicViewButtonLabels.three].firstMatch }
    var nineButton: XCUIElement { appWindow.buttons[basicViewButtonLabels.nine].firstMatch }
    var zeroButton: XCUIElement { appWindow.buttons[basicViewButtonLabels.zero].firstMatch }
    var oneButton: XCUIElement { appWindow.buttons[basicViewButtonLabels.one].firstMatch }
    var fiveButton: XCUIElement { appWindow.buttons[basicViewButtonLabels.five].firstMatch }
    var fourButton: XCUIElement { appWindow.buttons[basicViewButtonLabels.four].firstMatch }
    var sixButton: XCUIElement { appWindow.buttons[basicViewButtonLabels.six].firstMatch }
    var eightButton: XCUIElement { appWindow.buttons[basicViewButtonLabels.eight].firstMatch }
    var sevenButton: XCUIElement { appWindow.buttons[basicViewButtonLabels.seven].firstMatch }
    
    func simpleOperation(_ description: String, leftHand: XCUIElement? = nil, operation: XCUIElement? = nil, rightHand: XCUIElement? = nil, expectedResult: String, negativeButton: XCUIElement? = nil, equalButton: XCUIElement? = nil, displayMatchBool: Bool = true) {
        XCTContext.runActivity(named: description) { _ in
            leftHand?.click()
            operation?.click()
            rightHand?.click()
            negativeButton?.click()
            equalButton?.click()
            XCTAssert(displayViewMatches(expectedResult: expectedResult, displayMatchBool: displayMatchBool).displayMatched, displayViewMatches(expectedResult: expectedResult, displayMatchBool: displayMatchBool).errorFound)
        }
    }
    
    func displayViewMatches(expectedResult: String, displayMatchBool: Bool) -> (displayMatched: Bool, errorFound: String){
        XCTContext.runActivity(named: "Check if \(expectedResult) is in display.") { _ in
            return displayMatchBool ? (calculatorDisplay.value as! String == expectedResult, "Unexpected result: expected \(expectedResult), found \(calculatorDisplay.value ?? "").") : (calculatorDisplay.value as! String != expectedResult, "Unexpected result: expected \(expectedResult), found \(calculatorDisplay.value ?? "").")
            }
            
    }
    
    func checkInputMode(inputModeCheck: String) {
        XCTAssertTrue(inputModeDisplay.value as! String == inputModeCheck, "Expected to be in input mode \(inputModeCheck), found \(inputModeDisplay.value ?? "").")
    }
    
    func calculatorDisplayInput(inputString: String) {
        calculatorDisplay.typeText(inputString)
    }
}
