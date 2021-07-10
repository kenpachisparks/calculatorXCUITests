//
//  ScientificView.swift
//  CalculatorXCUITestsUITests
//
//  Created by Ryan T on 7/9/21.
//  Copyright © 2021 Ryan Touvell. All rights reserved.
//

import XCTest

class ScientificView: NSViewController {
    var app: XCUIApplication { BasicView().app }
    
    struct scientificButtonLabels {
        static let rightParen = "right paren"
        static let leftParen = "left paren"
        static let inverse = "inverse"
        static let sine = "sine"
        static let hyperbolicCosine = "hyperbolic cosine"
        static let xSquared = "x squared"
        static let squareRoot = "square root"
        static let cubeRoot = "cube root"
        static let nthRoot = "nth root"
        static let hyperbolicSine = "hyperbolic sine"
        static let powerOfY = "x to the power of y"
        static let cubed = "x cubed"
        static let naturalLogarithm = "natural logarithm"
        static let logBase = "log base 10"
        static let tangent = "tangent"
        static let hyperbolicTangent = "hyperbolic tangent"
        static let cosine = "cosine"
        static let xFactorial = "x factorial"
        static let pi = "pi"
        static let randomNumber = "random number"
        static let e = "e"
        static let EE = "EE"
        static let radians = "radians"
        static let degrees = "degrees"
        static let tenToX = "10 to the x"
        static let secondaryFunctions = "secondary functions"
        static let memoryClear = "memory clear"
        static let memoryPlus = "memory plus"
        static let memoryMinus = "memory minus"
        static let memoryRecall = "memory recall"
        static let eToTheX = "e to the x"
    }
    
    struct inverseButtonTitles {
        static let sine = "inverse sine"
        static let hyperbolicCosine = "inverse hyperbolic cosine"
        static let hyperbolicSine = "inverse hyperbolic sine"
        static let naturalLogarithm = "logarithm base y"
        static let logBase10 = "logarithm base 2"
        static let tangent = "inverse tangent"
        static let hyperbolicTangent = "inverse hyperbolic tangent"
        static let cosine = "inverse cosine"
        static let tenToTheX = "2 to the x"
        static let eToTheX = "to the power of (reverse parameters)"
    }
    
    var rightParenButton: XCUIElement { app.windows.firstMatch.buttons[scientificButtonLabels.rightParen].firstMatch }
    var leftParenButton: XCUIElement { app.windows.firstMatch.buttons[scientificButtonLabels.leftParen].firstMatch }
    var inverseButton: XCUIElement { app.windows.firstMatch.buttons[scientificButtonLabels.inverse].firstMatch }
    var sineButton: XCUIElement { app.windows.firstMatch.buttons[scientificButtonLabels.sine].firstMatch }
    var hyperbolicCosineButton: XCUIElement { app.windows.firstMatch.buttons[scientificButtonLabels.hyperbolicCosine].firstMatch }
    var xSquaredButton: XCUIElement { app.windows.firstMatch.buttons[scientificButtonLabels.xSquared].firstMatch }
    var squareRootButton: XCUIElement { app.windows.firstMatch.buttons[scientificButtonLabels.squareRoot].firstMatch }
    var cubeRootButton: XCUIElement { app.windows.firstMatch.buttons[scientificButtonLabels.cubeRoot].firstMatch }
    var nthRootButton: XCUIElement { app.windows.firstMatch.buttons[scientificButtonLabels.nthRoot].firstMatch }
    var hyperbolicSineButton: XCUIElement { app.windows.firstMatch.buttons[scientificButtonLabels.hyperbolicSine].firstMatch }
    var powerOfYButton: XCUIElement { app.windows.firstMatch.buttons[scientificButtonLabels.powerOfY].firstMatch }
    var cubedButton: XCUIElement { app.windows.firstMatch.buttons[scientificButtonLabels.cubed].firstMatch }
    var naturalLogarithmButton: XCUIElement { app.windows.firstMatch.buttons[scientificButtonLabels.naturalLogarithm].firstMatch }
    var logBaseButton: XCUIElement { app.windows.firstMatch.buttons[scientificButtonLabels.logBase].firstMatch }
    var tangentButton: XCUIElement { app.windows.firstMatch.buttons[scientificButtonLabels.tangent].firstMatch }
    var hyperbolicTangentButton: XCUIElement { app.windows.firstMatch.buttons[scientificButtonLabels.hyperbolicTangent].firstMatch }
    var cosineButton: XCUIElement { app.windows.firstMatch.buttons[scientificButtonLabels.cosine].firstMatch }
    var xFactorialButton: XCUIElement { app.windows.firstMatch.buttons[scientificButtonLabels.xFactorial].firstMatch }
    var piButton: XCUIElement { app.windows.firstMatch.buttons[scientificButtonLabels.pi].firstMatch }
    var randomNumberButton: XCUIElement { app.windows.firstMatch.buttons[scientificButtonLabels.randomNumber].firstMatch }
    var eButton: XCUIElement { app.windows.firstMatch.buttons[scientificButtonLabels.e].firstMatch }
    var EEButton: XCUIElement { app.windows.firstMatch.buttons[scientificButtonLabels.EE].firstMatch }
    var radiansButton: XCUIElement { app.windows.firstMatch.buttons[scientificButtonLabels.radians].firstMatch }
    var degreesButton: XCUIElement { app.windows.firstMatch.buttons[scientificButtonLabels.degrees].firstMatch }
    var tenToXButton: XCUIElement { app.windows.firstMatch.buttons[scientificButtonLabels.tenToX].firstMatch }
    var secondaryFunctionsButton: XCUIElement { app.windows.firstMatch.buttons[scientificButtonLabels.secondaryFunctions].firstMatch }
    var memoryClearButton: XCUIElement { app.windows.firstMatch.buttons[scientificButtonLabels.memoryClear].firstMatch }
    var memoryPlusButton: XCUIElement { app.windows.firstMatch.buttons[scientificButtonLabels.memoryPlus].firstMatch }
    var memoryMinusButton: XCUIElement { app.windows.firstMatch.buttons[scientificButtonLabels.memoryMinus].firstMatch }
    var memoryRecallButton: XCUIElement { app.windows.firstMatch.buttons[scientificButtonLabels.memoryRecall].firstMatch }
    var eToTheXButton: XCUIElement { app.windows.firstMatch.buttons[scientificButtonLabels.eToTheX].firstMatch }
    
    
}
