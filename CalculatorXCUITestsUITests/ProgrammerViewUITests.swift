//
//  ProgrammerViewUITests.swift
//  CalculatorXCUITestsUITests
//
//  Created by Ryan T on 7/9/21.
//  Copyright © 2021 Ryan Touvell. All rights reserved.
//

import XCTest

class ProgrammerViewUITests: XCTestSetup {
    
    override func setUp() {
        app.launch()
        menuBar.enableProgrammerView()
    }
    
    override func tearDown() {
        app.terminate()
    }
    
    func testOpenProgrammerCalculator() {
        XCTContext.runActivity(named: "Confirm Programmer Calculator is opened.") { _ in
            XCTAssertTrue(app.exists, "Application is not opened")
            XCTAssertTrue(programmerView.bitwiseExclusiveOrButton.exists, "Check if the Scientific View is opened")
        }
    }
}
