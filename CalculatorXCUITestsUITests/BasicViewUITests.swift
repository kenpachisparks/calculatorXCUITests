//
//  BasicViewUITests.swift
//  CalculatorXCUITestsUITests
//
//  Created by Ryan T on 7/3/21.
//  Copyright © 2021 Ryan Touvell. All rights reserved.
//

import XCTest

class BasicViewUITests: XCTestSetup {
      
    override func setUp() {
        app.launch()
        menuBar.enableBasicView()
    }

    func testOpenCalculator() {
        let expectedResult = "0"
        basicView.simpleOperation("Confirm Basic Calculator is opened and is zero'd", expectedResult: expectedResult)
    }

    func testNumberInput() {
        let expectedResult = "8"
        basicView.simpleOperation("Click number and confirm display matches", leftHand: basicView.eightButton, expectedResult: expectedResult)
    }
    
    func testClear() {
        let expectedResult = "0"
        basicView.simpleOperation("Click number and clear the input", leftHand: basicView.eightButton, operation: basicView.clearButton, expectedResult: expectedResult)
    }
    
    func testAddition() {
        let expectedResult = "17"
        basicView.simpleOperation("Test simple addition - 8 + 9",leftHand: basicView.eightButton, operation: basicView.addButton, rightHand: basicView.nineButton, expectedResult: expectedResult, equalButton: basicView.equalsButton)
    }
    
    func testMultiplication() {
        let expectedResult = "72"
        basicView.simpleOperation("Test simple multiplication - 8 * 9",leftHand: basicView.eightButton, operation: basicView.multiplyButton, rightHand: basicView.nineButton, expectedResult: expectedResult, equalButton: basicView.equalsButton)
    }
    
    func testDivision() {
        let expectedResult = "2"
        basicView.simpleOperation("Test simple division - 8 / 4",leftHand: basicView.eightButton, operation: basicView.divideButton, rightHand: basicView.fourButton, expectedResult: expectedResult, equalButton: basicView.equalsButton)
    }
    
    func testDoubleAddition() {
        var expectedResult = "17"
        basicView.simpleOperation("Test simple addition - 8 + 9",leftHand: basicView.eightButton, operation: basicView.addButton, rightHand: basicView.nineButton, expectedResult: expectedResult, equalButton: basicView.equalsButton)
        
        expectedResult = "44"
        
        basicView.simpleOperation("Repeat '=' and check results", leftHand: basicView.equalsButton, operation: basicView.equalsButton, rightHand: basicView.equalsButton, expectedResult: expectedResult)
    }
    
    func testChangeAdditionToSubtraction() {
        let expectedResult = "7"
        basicView.simpleOperation("Click multiply operator then change to minus", leftHand: basicView.nineButton, operation: basicView.multiplyButton, rightHand: basicView.substractButton, expectedResult: expectedResult, negativeButton: basicView.twoButton, equalButton: basicView.equalsButton)
    }
    
    func testNegativePositiveButton() {
        let expectedResult = "-5"
        
        basicView.simpleOperation("Check if the negative button matches", leftHand: basicView.fiveButton, expectedResult: expectedResult, negativeButton: basicView.negativeButton)
        basicView.simpleOperation("Check if the negative button press again doesn't match", expectedResult: expectedResult, negativeButton:  basicView.negativeButton, displayMatchBool: false)
    }
    
    func testDoubleNegativeOperation() {
        let expectedResult = "7"
        basicView.simpleOperation("Test negative subtraction 3 - (-4)",leftHand: basicView.threeButton, operation: basicView.substractButton, rightHand: basicView.fourButton, expectedResult: expectedResult, negativeButton: basicView.negativeButton, equalButton: basicView.equalsButton)
    }
    
    func testPercentValue() {
        let expectedResult = "5e-2"
        menuBar.decimalPlaceZeroMenuItemButton.click()
        
        basicView.simpleOperation("Test to confirm percent appears as a %",leftHand: basicView.fiveButton, operation: basicView.percentButton, expectedResult: expectedResult)
    }
    
    func testDecimalValueTwo() {
        let expectedResult = "1.75"
        menuBar.decimalPlaceTwoMenuItemButton.click()
        
        basicView.simpleOperation("Test decminal value from 7/4",leftHand: basicView.sevenButton, operation: basicView.divideButton, rightHand: basicView.fourButton, expectedResult: expectedResult, equalButton: basicView.equalsButton)
    }
    
    func testDecimalValueFifteen() {
        let numberInput = "0.333333333333333"
        let expectedResult = numberInput
        
        basicView.calculatorDisplayInput(inputString: numberInput)
        basicView.simpleOperation("Test decminal value from 3/9",expectedResult: expectedResult)
    }
    
    func testMaxDisplayCap() {
        let numberInput = "1111111111111111111111111111111111111111"
        let expectedResult = numberInput
        
        basicView.calculatorDisplayInput(inputString: numberInput)
        basicView.simpleOperation("Enter long string to confirm if max limit number input maxs out.",expectedResult: expectedResult, displayMatchBool: false)
    }
    
    func testThousandSeparatorsSelected() {
        let numberInput = "2222"
        let expectedResult = numberInput
        
        menuBar.thousandsSeparatorsMenuItemButton.click()
        basicView.calculatorDisplayInput(inputString: numberInput)
        basicView.simpleOperation("Confirm thousands separators appear when selected.",expectedResult: expectedResult, displayMatchBool: false)
        menuBar.thousandsSeparatorsMenuItemButton.click()
    }
    
    func testThousandSeparatorsDeselected() {
        let numberInput = "3333"
        let expectedResult = numberInput
        
        basicView.calculatorDisplayInput(inputString: numberInput)
        basicView.simpleOperation("Confirm thousands separators appear when selected.",expectedResult: expectedResult)
    }
}
