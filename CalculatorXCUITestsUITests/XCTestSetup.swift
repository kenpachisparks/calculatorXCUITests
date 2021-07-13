//
//  XCTestSetup.swift
//  CalculatorXCUITestsUITests
//
//  Created by Ryan T on 7/11/21.
//  Copyright © 2021 Ryan Touvell. All rights reserved.
//

import XCTest

class XCTestSetup: XCTestCase {
    let variableViewPage = ViewVariablePage()
    var basicView = BasicView()
    var menuBar = MenuBar()
    var programmerView = ProgrammerView()
    var scientificView = ScientificView()
    var app: XCUIApplication { variableViewPage.app }

    override func setUp() {
        app.launch()
        menuBar.enableBasicView()
    }

    override func tearDown() {
        app.terminate()
    }
}
