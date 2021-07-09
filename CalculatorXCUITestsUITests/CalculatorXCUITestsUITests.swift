//
//  CalculatorXCUITestsUITests.swift
//  CalculatorXCUITestsUITests
//
//  Created by Ryan T on 7/3/21.
//  Copyright © 2021 Ryan Touvell. All rights reserved.
//

import XCTest

class Calculator_TestsUITests: XCTestCase {
    let app = CalculatorView().calculatorApp
    let calc = CalculatorView()
    
    override func setUp() {
        app.launch()
    }

    override func tearDown() {
        app.terminate()
    }

    func testOpenCalculator() {
        XCTAssertTrue(app.exists, "Application is not opened")
        XCTAssertTrue(calc.allClearButton.title == "all clear", "AC button is not in view, check if calculator window opened.")
        XCTAssertTrue(calc.calculatorDisplay.value as! String == "0" , "Entry of calculator has been made. Make sure nothing is pressed.")
    }

    func testEightInput() {
        calc.eightButton.click()
        
        XCTAssertTrue(calc.calculatorDisplay.value as! String == "8", "Number 8 was not found in the view display. Make sure the button is being pressed.")
    }
    
    func testClear() {
        calc.eightButton.click()
        calc.clearButton.click()
        
        XCTAssertTrue(calc.calculatorDisplay.value as! String == "0", "Entry of calculator has been made. Make sure nothing is pressed.")
    }
    
    func testAddition() {
		calc.testSimpleOperation("Test simple addition - 8 + 9",leftHand: calc.eightButton, operation: calc.addButton, rightHand: calc.nineButton, expectedResult: "17")
    }
	
	func testMultiplication() {
		calc.testSimpleOperation("Test simple multiplication - 8 * 9",leftHand: calc.eightButton, operation: calc.multiplyButton, rightHand: calc.nineButton, expectedResult: "72")
	}
    
    func testDoubleAddition() {
		calc.testSimpleOperation("Test simple addition - 8 + 9",leftHand: calc.eightButton, operation: calc.addButton, rightHand: calc.nineButton, expectedResult: "17")
        
		XCTContext.runActivity(named: "Repeat '=' and check results") { _ in
			for _ in 0...2 {
				calc.equalsButton.click()
			}
			
			XCTAssertTrue(calc.calculatorDisplay.value as! String == "44", "Entry of calculator is wrong. Should be 44 in the view display.")
		}
    }
    
    func testChangeAdditionToSubtraction() {
        calc.nineButton.click()
        calc.addButton.click()
        calc.substractButton.click()
        calc.twoButton.click()
        calc.equalsButton.click()
        
        XCTAssertTrue(calc.calculatorDisplay.value as! String == "7", "Entry of calculator is wrong. Should be 7 in the view display.")
    }
}
