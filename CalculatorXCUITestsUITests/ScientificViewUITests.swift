//
//  ScientificViewUITests.swift
//  CalculatorXCUITestsUITests
//
//  Created by Ryan T on 7/9/21.
//  Copyright © 2021 Ryan Touvell. All rights reserved.
//

import XCTest

class ScientificViewUITests: BasicViewUITests {
    let scientificView = ScientificView()
    
    override func setUp() {
        app.launch()
        menuBar.enableScientificView()
    }
    
    func testOpenScientificCalculator() {
        XCTAssertTrue(app.exists, "Application is not opened")
        XCTAssertTrue(scientificView.randomNumberButton.exists && scientificView.logBaseButton.exists, "Check if the Scientific View is opened")
    }
    
    func testRandomNumberGenerates() {
        scientificView.randomNumberButton.click()
        let firstNumberGenerated = basicView.calculatorDisplay.value as! String
        
        scientificView.randomNumberButton.click()
        
        basicView.displayViewMatches(expectedResult: firstNumberGenerated, displayMatchBool: false)
    }
}
