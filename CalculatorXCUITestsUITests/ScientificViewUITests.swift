//
//  ScientificViewUITests.swift
//  CalculatorXCUITestsUITests
//
//  Created by Ryan T on 7/9/21.
//  Copyright © 2021 Ryan Touvell. All rights reserved.
//

import XCTest

class ScientificViewUITests: XCTestSetup {
    
    let notANumber = "Not a number"
    
    override func setUp() {
        app.launch()
        menuBar.enableScientificView()
    }
    
    override func tearDown() {
        app.terminate()
    }
    
    func testOpenScientificCalculator() {
        XCTContext.runActivity(named: "Confirm Scientific Calculator is opened.") { _ in
            XCTAssertTrue(app.exists, "Application is not opened")
            XCTAssertTrue(scientificView.randomNumberButton.exists && scientificView.logBaseButton.exists, "Check if the Scientific View is opened")
        }
    }
    
    func testSquared() {
        let expectedResult = "36"
        scientificView.singleOperation("Test 6 squared",leftHand: basicView.sixButton, scienfiticMethod: scientificView.xSquaredButton, expectedResult: expectedResult)
    }
    
    func testCubed() {
        let expectedResult = "729"
        scientificView.singleOperation("Test 9 cubed",leftHand: basicView.nineButton, scienfiticMethod: scientificView.cubedButton, expectedResult: expectedResult)
    }
    
    func testXToPowerY() {
        let expectedResult = "16807"
        basicView.simpleOperation("Test 7 to the power of 5", leftHand: basicView.sevenButton, operation: scientificView.powerOfYButton, rightHand: basicView.fiveButton, expectedResult: expectedResult, equalButton: basicView.equalsButton)
    }
    
    func testEToPowerX() {
        let expectedResult = "148.41"
        scientificView.singleOperation("Test e to the power of 5", leftHand: basicView.fiveButton, scienfiticMethod: scientificView.eToTheXButton, expectedResult: expectedResult)
    }
    
    func test10ToPowerX() {
        let expectedResult = "1000"
        scientificView.singleOperation("Test 10 to the power of 4", leftHand: basicView.threeButton, scienfiticMethod: scientificView.tenToXButton, expectedResult: expectedResult)
    }
    
    func testInverseNotANumber() {
            scientificView.inverseButton.click()
        scientificView.singleOperation("Check if Inverse button will display expected result 'Not a number'.", expectedResult: notANumber)
    }
    
    func testInverseNumber() {
        let expectedResult = "0.13"
        scientificView.singleOperation("Test Inverse of 8", leftHand: basicView.eightButton, scienfiticMethod: scientificView.inverseButton, expectedResult: expectedResult)
    }
    
    func testSquareRoot() {
        let expectedResult = "3"
        scientificView.singleOperation("Test square root of 9", leftHand: basicView.nineButton, scienfiticMethod: scientificView.squareRootButton, expectedResult: expectedResult)
    }
    
    func testCubeRoot() {
        let expectedResult = "2"
        scientificView.singleOperation("Test cube root of 8", leftHand: basicView.eightButton, scienfiticMethod: scientificView.cubeRootButton, expectedResult: expectedResult)
    }
    
    func testNthRootToX() {
        let expectedResult = "1.29"
        basicView.simpleOperation("Test 6th root of 7", leftHand: basicView.sixButton, operation: scientificView.nthRootButton, rightHand: basicView.sevenButton, expectedResult: expectedResult, equalButton: basicView.equalsButton)
    }
    
    func testNaturalLogarithmNotANumber() {
        scientificView.naturalLogarithmButton.click()
        scientificView.singleOperation("Check if Inverse button will display expected result 'Not a number'.", expectedResult: notANumber)
    }
    
    func testNaturalLogarithmNumber() {
        let expectedResult = "1.39"
        scientificView.singleOperation("Test Natural Logarithm of 4", leftHand: basicView.fourButton, scienfiticMethod: scientificView.naturalLogarithmButton, expectedResult: expectedResult)
    }
    
    func testLogBase10NotANumber() {
        scientificView.singleOperation("Check if Inverse button will display expected result 'Not a number'.", scienfiticMethod: scientificView.logBaseButton, expectedResult: notANumber)
    }
    
    func testLogBase10Number() {
        let expectedResult = "0.95"
        scientificView.singleOperation("Test log base 10 of 9", leftHand: basicView.nineButton, scienfiticMethod: scientificView.logBaseButton, expectedResult: expectedResult)
    }
    
    func testFactorial() {
        let expectedResult = "40320"
        scientificView.singleOperation("Test factorial of 8", leftHand: basicView.eightButton, scienfiticMethod: scientificView.xFactorialButton, expectedResult: expectedResult)
    }
    
    func testSine() {
        let expectedResult = "0.07"
        scientificView.singleOperation("Test sine of 4", leftHand: basicView.fourButton, scienfiticMethod: scientificView.sineButton, expectedResult: expectedResult)
    }
    
    func testInverseSine() {
        let expectedResult = "90"
        scientificView.singleOperation("Test inverse sine of 1", leftHand: basicView.oneButton, scienfiticMethod: scientificView.sineButton, inverse: scientificView.secondaryFunctionsButton, expectedResult: expectedResult)
    }
    
    func testCosine() {
        let expectedResult = "0.99"
        scientificView.singleOperation("Test cosine of 8", leftHand: basicView.eightButton, scienfiticMethod: scientificView.cosineButton, expectedResult: expectedResult)
    }
    
    func testInverseCosine() {
        let expectedResult = "66.42"
        scientificView.singleOperation("Test inverse cosine of 0.4", leftHand: basicView.fourButton, scienfiticMethod: scientificView.cosineButton, inverse: scientificView.secondaryFunctionsButton, pointButton: basicView.pointButton, expectedResult: expectedResult)
    }
    
    func testTangent() {
        let expectedResult = "0.11"
        scientificView.singleOperation("Test tangent of 6", leftHand: basicView.sixButton, scienfiticMethod: scientificView.tangentButton, expectedResult: expectedResult)
    }
    
    func testEDisplay() {
        let expectedResult = "2.72"
        scientificView.eButton.click()
        basicView.simpleOperation("Check if EE button will display expected result.", expectedResult: expectedResult)
    }
    
    func testEEEmptyDisplay() {
        let expectedResult = "0 e 0"
            scientificView.EEButton.click()
            basicView.simpleOperation("FIXME", expectedResult: expectedResult)
    }
    
    func testEEInputDisplay() {
        let expectedResult = "7 e 0"
        scientificView.singleOperation("Test EE, enter exponent, of 7 e 4", leftHand: basicView.sevenButton, scienfiticMethod: scientificView.EEButton, expectedResult: expectedResult)
    }
    
    func testEEEquals() {
        let expectedResult = "400000000"
        basicView.simpleOperation("Test EE, enter exponent, of 4 e 8", leftHand: basicView.fourButton, operation: scientificView.EEButton, rightHand: basicView.eightButton, expectedResult: expectedResult, equalButton: basicView.equalsButton)
    }
    
    func testRadiansDisplay() {
        XCTContext.runActivity(named: "Check if Rad is in display view then click the degree button to confirm Radian button exists") { _ in
            scientificView.radiansButton.click()
            XCTAssert(basicView.inputModeDisplay.value as? String == "Rad", "Expected to be in input mode Radian, found \(basicView.inputModeDisplay.value ?? "").")
            scientificView.degreesButton.click()
            XCTAssert(scientificView.radiansButton.exists, "Could not find Radian Button, check if Degree button is present.")
        }
    }
    
    func testHyperbolicSine() {
        let expectedResult = "27.29"
        scientificView.singleOperation("Test hyperbolic sine of 4", leftHand: basicView.fourButton, scienfiticMethod: scientificView.hyperbolicSineButton, expectedResult: expectedResult)
    }
    
    func testHyperbolicCosineGreaterThanZero() {
        let expectedResult = "1490.48"
        scientificView.singleOperation("Test hyperbolic cosine of 8", leftHand: basicView.eightButton, scienfiticMethod: scientificView.hyperbolicCosineButton, expectedResult: expectedResult)
    }
    
    func testHyperbolicCosineZero() {
        let expectedResult = "1"
        scientificView.hyperbolicCosineButton.click()
        basicView.simpleOperation("FIXME", expectedResult: expectedResult)
    }
    
    func testHyperbolicTangentGreaterThanZero() {
        let expectedResult = "27.29"
        scientificView.singleOperation("Test hyperbolic tangent of 4", leftHand: basicView.fourButton, scienfiticMethod: scientificView.hyperbolicSineButton, expectedResult: expectedResult)
    }
    
    func testHyperbolicTangentZero() {
        let expectedResult = "0"
        scientificView.hyperbolicTangentButton.click()
        basicView.simpleOperation("FIXME", expectedResult: expectedResult)
    }
    
    func testPiDisplay() {
        let expectedResult = "3.14"
        scientificView.piButton.click()
        basicView.simpleOperation("FIXME", expectedResult: expectedResult)
    }
    
    func testRandomNumberGenerates() {
        scientificView.randomNumberButton.click()
        let firstNumberGenerated = basicView.calculatorDisplay.value as! String
        
        scientificView.randomNumberButton.click()
        
        basicView.simpleOperation("FIXME", expectedResult: firstNumberGenerated, displayMatchBool: false)
    }
}
