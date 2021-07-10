//
//  ProgrammerViewUITests.swift
//  CalculatorXCUITestsUITests
//
//  Created by Ryan T on 7/9/21.
//  Copyright © 2021 Ryan Touvell. All rights reserved.
//

import XCTest

class ProgrammerViewUITests: BasicViewUITests {
    
    override func setUp() {
        app.launch()
        menuBar.enableProgrammerView()
    }
    
    func testOpenProgrammerCalculator() {
        XCTAssertTrue(app.exists, "Application is not opened")
        XCTAssertTrue(app.exists, "Application is not opened")
    }
}
