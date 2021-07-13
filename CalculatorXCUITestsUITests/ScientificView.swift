//
//  ScientificView.swift
//  CalculatorXCUITestsUITests
//
//  Created by Ryan T on 7/9/21.
//  Copyright © 2021 Ryan Touvell. All rights reserved.
//

import XCTest

public class ScientificView: NSViewController {
    var appWindow = ViewVariablePage().appWindow
    var basicView = BasicView()
    
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
    
    var rightParenButton: XCUIElement { appWindow.buttons[scientificButtonLabels.rightParen].firstMatch }
    var leftParenButton: XCUIElement { appWindow.buttons[scientificButtonLabels.leftParen].firstMatch }
    var inverseButton: XCUIElement { appWindow.buttons[scientificButtonLabels.inverse].firstMatch }
    var sineButton: XCUIElement { appWindow.buttons[scientificButtonLabels.sine].firstMatch }
    var hyperbolicCosineButton: XCUIElement { appWindow.buttons[scientificButtonLabels.hyperbolicCosine].firstMatch }
    var xSquaredButton: XCUIElement { appWindow.buttons[scientificButtonLabels.xSquared].firstMatch }
    var squareRootButton: XCUIElement { appWindow.buttons[scientificButtonLabels.squareRoot].firstMatch }
    var cubeRootButton: XCUIElement { appWindow.buttons[scientificButtonLabels.cubeRoot].firstMatch }
    var nthRootButton: XCUIElement { appWindow.buttons[scientificButtonLabels.nthRoot].firstMatch }
    var hyperbolicSineButton: XCUIElement { appWindow.buttons[scientificButtonLabels.hyperbolicSine].firstMatch }
    var powerOfYButton: XCUIElement { appWindow.buttons[scientificButtonLabels.powerOfY].firstMatch }
    var cubedButton: XCUIElement { appWindow.buttons[scientificButtonLabels.cubed].firstMatch }
    var naturalLogarithmButton: XCUIElement { appWindow.buttons[scientificButtonLabels.naturalLogarithm].firstMatch }
    var logBaseButton: XCUIElement { appWindow.buttons[scientificButtonLabels.logBase].firstMatch }
    var tangentButton: XCUIElement { appWindow.buttons[scientificButtonLabels.tangent].firstMatch }
    var hyperbolicTangentButton: XCUIElement { appWindow.buttons[scientificButtonLabels.hyperbolicTangent].firstMatch }
    var cosineButton: XCUIElement { appWindow.buttons[scientificButtonLabels.cosine].firstMatch }
    var xFactorialButton: XCUIElement { appWindow.buttons[scientificButtonLabels.xFactorial].firstMatch }
    var piButton: XCUIElement { appWindow.buttons[scientificButtonLabels.pi].firstMatch }
    var randomNumberButton: XCUIElement { appWindow.buttons[scientificButtonLabels.randomNumber].firstMatch }
    var eButton: XCUIElement { appWindow.buttons[scientificButtonLabels.e].firstMatch }
    var EEButton: XCUIElement { appWindow.buttons[scientificButtonLabels.EE].firstMatch }
    var radiansButton: XCUIElement { appWindow.buttons[scientificButtonLabels.radians].firstMatch }
    var degreesButton: XCUIElement { appWindow.buttons[scientificButtonLabels.degrees].firstMatch }
    var tenToXButton: XCUIElement { appWindow.buttons[scientificButtonLabels.tenToX].firstMatch }
    var secondaryFunctionsButton: XCUIElement { appWindow.buttons[scientificButtonLabels.secondaryFunctions].firstMatch }
    var memoryClearButton: XCUIElement { appWindow.buttons[scientificButtonLabels.memoryClear].firstMatch }
    var memoryPlusButton: XCUIElement { appWindow.buttons[scientificButtonLabels.memoryPlus].firstMatch }
    var memoryMinusButton: XCUIElement { appWindow.buttons[scientificButtonLabels.memoryMinus].firstMatch }
    var memoryRecallButton: XCUIElement { appWindow.buttons[scientificButtonLabels.memoryRecall].firstMatch }
    var eToTheXButton: XCUIElement { appWindow.buttons[scientificButtonLabels.eToTheX].firstMatch }
    
    func singleOperation(_ description: String, leftHand: XCUIElement? = nil, scienfiticMethod: XCUIElement? = nil, inverse: XCUIElement? = nil, pointButton: XCUIElement? = nil, expectedResult: String) {
        XCTContext.runActivity(named: description) { _ in
            
            pointButton?.click()
            leftHand?.click()
            inverse?.click()
            scienfiticMethod?.click()
            
            basicView.simpleOperation(description, expectedResult: expectedResult)
        }
    }
}
