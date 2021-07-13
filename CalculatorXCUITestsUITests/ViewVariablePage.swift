//
//  ViewVariablePage.swift
//  CalculatorXCUITestsUITests
//
//  Created by Ryan T on 7/11/21.
//  Copyright © 2021 Ryan Touvell. All rights reserved.
//
import Foundation
import XCTest

public class ViewVariablePage: NSViewController {
    let app = XCUIApplication(bundleIdentifier: "com.apple.calculator")
    var appWindow: XCUIElement { app.windows.firstMatch }
}
