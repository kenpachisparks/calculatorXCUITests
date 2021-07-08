//
//  CalculatorXCUITestsUITests.swift
//  CalculatorXCUITestsUITests
//
//  Created by Ryan T on 7/3/21.
//  Copyright © 2021 Ryan Touvell. All rights reserved.
//

import XCTest

class Calculator_TestsUITests: XCTestCase {
    let calculatorApp = CalculatorView().calculatorApp
    let calculatorView = CalculatorView()
    
    override func setUp() {
        calculatorApp.launch()
    }

    override func tearDown() {
        calculatorApp.terminate()
    }

    func testOpenCalculator() {
        XCTAssertTrue(calculatorApp.exists, "Application is not opened")
        XCTAssertTrue(calculatorView.allClearButton.title == "all clear", "AC button is not in view, check if calculator window opened.")
        XCTAssertTrue(calculatorView.calculatorDisplay.value as! String == "0" , "Entry of calculator has been made. Make sure nothing is pressed.")
    }

    func testEightInput() {
        calculatorView.eightButton.click()
        
        XCTAssertTrue(calculatorView.calculatorDisplay.value as! String == "8", "Number 8 was not found in the view display. Make sure the button is being pressed.")
    }
    
    func testClear() {
        calculatorView.eightButton.click()
        calculatorView.clearButton.click()
        
        XCTAssertTrue(calculatorView.calculatorDisplay.value as! String == "0", "Entry of calculator has been made. Make sure nothing is pressed.")
    }
    
    func testAddition() {
        calculatorView.eightButton.click()
        calculatorView.addButton.click()
        calculatorView.nineButton.click()
        calculatorView.equalsButton.click()
        
        XCTAssertTrue(calculatorView.calculatorDisplay.value as! String == "17", "Entry of calculator is wrong. Should be 17 in the view display.")
    }
    
    func testDoubleAddition() {
        calculatorView.eightButton.click()
        calculatorView.addButton.click()
        calculatorView.nineButton.click()
        
        for _ in 0...3 {
            calculatorView.equalsButton.click()
        }
        
        XCTAssertTrue(calculatorView.calculatorDisplay.value as! String == "44", "Entry of calculator is wrong. Should be 44 in the view display.")
    }
    
    func testChangeAdditionToSubtraction() {
        calculatorView.nineButton.click()
        calculatorView.addButton.click()
        calculatorView.substractButton.click()
        calculatorView.twoButton.click()
        calculatorView.equalsButton.click()
        
        XCTAssertTrue(calculatorView.calculatorDisplay.value as! String == "7", "Entry of calculator is wrong. Should be 7 in the view display.")
    }
}
