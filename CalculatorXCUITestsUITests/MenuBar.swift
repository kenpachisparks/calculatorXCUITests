//
//  MenuBar.swift
//  CalculatorXCUITestsUITests
//
//  Created by Ryan T on 7/9/21.
//  Copyright © 2021 Ryan Touvell. All rights reserved.
//

import XCTest
import Foundation

public class MenuBar: NSViewController {
    var app = ViewVariablePage().app
    var basicView = BasicView()
    var scientificView = ScientificView()
    var programmerView = ProgrammerView()
    
    struct menuLabels {
        static let calculator = "Calculator"
        static let about = "About Calculator"
        static let hideCalculator = "Hide Calculator"
        static let hideOthers = "Hide Others"
        static let showAll = "Show All"
        static let quitCalculator = "Quit Calculator"
        static let file = "File"
        static let close = "Close"
        static let closeAll = "Close All"
        static let saveTape = "Save Tape As..."
        static let edit = "Edit"
        static let undo = "Undo"
        static let redo = "Redo"
        static let copy = "Copy"
        static let paste = "Paste"
        static let view = "View"
        static let basic = "Basic"
        static let scientific = "Scientific"
        static let programmer = "Programmer"
        static let thousandsSeparators = "Show Thousands Separators"
        static let rpn = "RPN Mode"
        static let decimalPlaces = "Decimal Places"
        static let convert = "Convert"
        static let recentConversions = "Recent Conversions"
        static let clear = "Clear Menu"
        static let area = "Area..."
        static let currency = "Currency..."
        static let energyOrWork = "Energy or Work..."
        static let length = "Length..."
        static let power = "Power..."
        static let pressure = "Pressure..."
        static let speed = "Speed..."
        static let temperature = "Temperature..."
        static let time = "Time..."
        static let volume = "Volume..."
        static let weightsAndMasses = "Weights and Masses..."
        static let speech = "Speech"
        static let speakButtonPress = "Speak Button Pressed"
        static let speakResult = "Speak Result"
        static let window = "Window"
        static let minimize = "Minimize"
        static let zoom = "Zoom"
        static let showPaperTape = "Show Paper Tape"
    }
    
    struct decimalPlaceLabels {
        static let one = "1"
        static let two = "2"
        static let three = "3"
        static let four = "4"
        static let five = "5"
        static let six = "6"
        static let seven = "7"
        static let eight = "8"
        static let nine = "9"
        static let zero = "0"
        static let ten = "10"
        static let eleven = "11"
        static let twelve = "12"
        static let thirteen = "13"
        static let forteen = "14"
        static let fifteen = "15"
    }
    
    var calculatorMenuBarButton: XCUIElement { app.menuBarItems[menuLabels.calculator].firstMatch }
    var aboutMenuItemButton: XCUIElement { calculatorMenuBarButton.menuItems[menuLabels.about].firstMatch }
    var hideCalculatorMenuItemButton: XCUIElement { calculatorMenuBarButton.menuItems[menuLabels.about].firstMatch }
    var hideOthersMenuItemButton: XCUIElement { calculatorMenuBarButton.menuItems[menuLabels.about].firstMatch }
    var showAllMenuItemButton: XCUIElement { calculatorMenuBarButton.menuItems[menuLabels.about].firstMatch }
    var quitCalculatorMenuItemButton: XCUIElement { calculatorMenuBarButton.menuItems[menuLabels.about].firstMatch }
    var fileMenuBarButton: XCUIElement { app.menuBarItems[menuLabels.calculator].firstMatch }
    var closeMenuItemButton: XCUIElement { fileMenuBarButton.menuItems[menuLabels.close].firstMatch }
    var closeAllMenuItemButton: XCUIElement { fileMenuBarButton.menuItems[menuLabels.closeAll].firstMatch }
    var saveTapeMenuItemButton: XCUIElement { fileMenuBarButton.menuItems[menuLabels.saveTape].firstMatch }
    var editMenuBarButton: XCUIElement { app.menuBarItems[menuLabels.edit].firstMatch }
    var undoMenuItemButton: XCUIElement { editMenuBarButton.menuItems[menuLabels.undo].firstMatch }
    var redoMenuItemButton: XCUIElement { editMenuBarButton.menuItems[menuLabels.redo].firstMatch }
    var copyMenuItemButton: XCUIElement { editMenuBarButton.menuItems[menuLabels.copy].firstMatch }
    var pasteMenuItemButton: XCUIElement { editMenuBarButton.menuItems[menuLabels.paste].firstMatch }
    var viewMenuBarButton: XCUIElement { app.menuBarItems[menuLabels.view].firstMatch }
    var basicMenuItemButton: XCUIElement { viewMenuBarButton.menuItems[menuLabels.basic].firstMatch  }
    var scientificMenuItemButton: XCUIElement { viewMenuBarButton.menuItems[menuLabels.scientific].firstMatch }
    var programmerMenuItemButton: XCUIElement { viewMenuBarButton.menuItems[menuLabels.programmer].firstMatch }
    var thousandsSeparatorsMenuItemButton: XCUIElement { viewMenuBarButton.menuItems[menuLabels.thousandsSeparators].firstMatch }
    var rpnMenuItemButton: XCUIElement { viewMenuBarButton.menuItems[menuLabels.rpn].firstMatch }
    var decimalPlacesMenuItemButton: XCUIElement { viewMenuBarButton.menuItems[menuLabels.decimalPlaces].firstMatch }
    var convertMenuBarButton: XCUIElement { app.menuBarItems[menuLabels.convert].firstMatch }
    var recentConversionsMenuItemButton: XCUIElement { convertMenuBarButton.menuItems[menuLabels.recentConversions].firstMatch  }
    var clearMenuItemButton: XCUIElement { convertMenuBarButton.menuItems[menuLabels.clear].firstMatch }
    var areaMenuItemButton: XCUIElement { convertMenuBarButton.menuItems[menuLabels.area].firstMatch }
    var currencyMenuItemButton: XCUIElement { convertMenuBarButton.menuItems[menuLabels.currency].firstMatch }
    var energyOrWorkMenuItemButton: XCUIElement { convertMenuBarButton.menuItems[menuLabels.energyOrWork].firstMatch }
    var lengthMenuItemButton: XCUIElement { convertMenuBarButton.menuItems[menuLabels.length].firstMatch }
    var powerMenuItemButton: XCUIElement { convertMenuBarButton.menuItems[menuLabels.power].firstMatch }
    var pressureMenuItemButton: XCUIElement { convertMenuBarButton.menuItems[menuLabels.pressure].firstMatch }
    var speedMenuItemButton: XCUIElement { convertMenuBarButton.menuItems[menuLabels.speed].firstMatch }
    var temperatureMenuItemButton: XCUIElement { convertMenuBarButton.menuItems[menuLabels.temperature].firstMatch }
    var timeMenuItemButton: XCUIElement { convertMenuBarButton.menuItems[menuLabels.time].firstMatch }
    var volumeMenuItemButton: XCUIElement { convertMenuBarButton.menuItems[menuLabels.volume].firstMatch }
    var weightsAndMassesMenuItemButton: XCUIElement { convertMenuBarButton.menuItems[menuLabels.weightsAndMasses].firstMatch }
    var speechMenuBarButton: XCUIElement { app.menuBarItems[menuLabels.speech].firstMatch }
    var speakButtonPressMenuItemButton: XCUIElement { speechMenuBarButton.menuItems[menuLabels.speakButtonPress].firstMatch  }
    var speakResultMenuItemButton: XCUIElement { speechMenuBarButton.menuItems[menuLabels.speakResult].firstMatch }
    var windowMenuBarButton: XCUIElement { app.menuBarItems[menuLabels.window].firstMatch }
    var minimize: XCUIElement { windowMenuBarButton.menuItems[menuLabels.minimize].firstMatch  }
    var zoomMenuItemButton: XCUIElement { windowMenuBarButton.menuItems[menuLabels.zoom].firstMatch }
    var showPaperTapeMenuItemButton: XCUIElement { windowMenuBarButton.menuItems[menuLabels.showPaperTape].firstMatch }
    
    var decimalPlaceOneMenuItemButton: XCUIElement { decimalPlacesMenuItemButton.menuItems[decimalPlaceLabels.one].firstMatch }
    var decimalPlaceTwoMenuItemButton: XCUIElement { decimalPlacesMenuItemButton.menuItems[decimalPlaceLabels.two].firstMatch }
    var decimalPlaceThreeMenuItemButton: XCUIElement { decimalPlacesMenuItemButton.menuItems[decimalPlaceLabels.three].firstMatch }
    var decimalPlaceFourMenuItemButton: XCUIElement { decimalPlacesMenuItemButton.menuItems[decimalPlaceLabels.four].firstMatch }
    var decimalPlaceFiveMenuItemButton: XCUIElement { decimalPlacesMenuItemButton.menuItems[decimalPlaceLabels.five].firstMatch }
    var decimalPlaceSixMenuItemButton: XCUIElement { decimalPlacesMenuItemButton.menuItems[decimalPlaceLabels.six].firstMatch }
    var decimalPlaceSevenMenuItemButton: XCUIElement { decimalPlacesMenuItemButton.menuItems[decimalPlaceLabels.seven].firstMatch }
    var decimalPlaceEightMenuItemButton: XCUIElement { decimalPlacesMenuItemButton.menuItems[decimalPlaceLabels.eight].firstMatch }
    var decimalPlaceNineMenuItemButton: XCUIElement { decimalPlacesMenuItemButton.menuItems[decimalPlaceLabels.nine].firstMatch }
    var decimalPlaceZeroMenuItemButton: XCUIElement { decimalPlacesMenuItemButton.menuItems[decimalPlaceLabels.zero].firstMatch }
    var decimalPlaceTenMenuItemButton: XCUIElement { decimalPlacesMenuItemButton.menuItems[decimalPlaceLabels.ten].firstMatch }
    var decimalPlaceElevenMenuItemButton: XCUIElement { decimalPlacesMenuItemButton.menuItems[decimalPlaceLabels.eleven].firstMatch }
    var decimalPlaceTwelveMenuItemButton: XCUIElement { decimalPlacesMenuItemButton.menuItems[decimalPlaceLabels.twelve].firstMatch }
    var decimalPlaceThirteenMenuItemButton: XCUIElement { decimalPlacesMenuItemButton.menuItems[decimalPlaceLabels.thirteen].firstMatch }
    var decimalPlaceForteenMenuItemButton: XCUIElement { decimalPlacesMenuItemButton.menuItems[decimalPlaceLabels.forteen].firstMatch }
    var decimalPlaceFifteenMenuItemButton: XCUIElement { decimalPlacesMenuItemButton.menuItems[decimalPlaceLabels.fifteen].firstMatch }
    
    func enableMenuItem (_ description: String, menuItem: XCUIElement) {
        XCTContext.runActivity(named: description) { _ in
                menuItem.click()
        }
    }
    
    func enableBasicView() {
        if scientificView.piButton.exists || programmerView.bitwiseExclusiveOrButton.exists {
            enableMenuItem("Enable Basic Calculator Menu item.", menuItem: basicMenuItemButton)
            enableMenuItem("Enable 0 Decimal Place Menu item.", menuItem: decimalPlaceZeroMenuItemButton)
        }
        disableRPNView()
        disableThousandsView()
    }
    
    func enableScientificView() {
        if !scientificView.piButton.exists {
            enableMenuItem("Enable Scientific Calculator Menu item.", menuItem: scientificMenuItemButton)
            scientificView.piButton.click()
            if basicView.calculatorDisplay.value as! String != "3.14" {
                enableMenuItem("Enable 2 Decimal Place Menu item.", menuItem: decimalPlaceTwoMenuItemButton)
                basicView.clearButton.click()
            }
        }
        if scientificView.piButton.exists && !basicView.oneButton.isHittable{
            enableMenuItem("Enable Scientific Calculator Menu item.", menuItem: scientificMenuItemButton)
        }
        disableRPNView()
        disableThousandsView()
    }
    
    func enableProgrammerView() {
        if !programmerView.bitwiseExclusiveOrButton.exists {
            enableMenuItem("Enable Programmer Calculator Menu item.", menuItem: programmerMenuItemButton)
            enableMenuItem("Enable 0 Decimal Place Menu item.", menuItem: decimalPlaceZeroMenuItemButton)
        }
        disableRPNView()
        disableThousandsView()
        disabledecimalView()
    }
    
    func disableRPNView() {
        if !basicView.calculatorDisplay.exists {
            rpnMenuItemButton.click()
        }
    }
    
    func disableThousandsView() {
        /* This would check if the checkmark is there using Applescript though Swift doesn't see the checkmark
        tell application "System Events"
            if value of attribute "AXMenuItemMarkChar" of menu item "Basic" of menu 1 of menu bar item "View" of menu bar 1 of process "Calculator" is equal to "✓" then click menu item "Scientific" of menu 1 of menu bar item "View" of menu bar 1 of process "Calculator"
        end tell
                 */
        let inputNumber = "1111"
        basicView.calculatorDisplayInput(inputString: inputNumber)
        if basicView.displayViewMatches(expectedResult: inputNumber, displayMatchBool: false).displayMatched {
            thousandsSeparatorsMenuItemButton.click()
        }
        basicView.clearButton.click()
    }
    
    func disabledecimalView() {
        /* This would check if the checkmark is there using Applescript though Swift doesn't see the checkmark
        tell application "System Events"
            if value of attribute "AXMenuItemMarkChar" of menu item "0" of menu item "Decimal Places" of menu 1 of menu bar item "View" of menu bar 1 of process "Calculator" is not equal to "✓" then click
        end tell
                 */
        let inputNumber = "0.1234567891234567"
        basicView.calculatorDisplayInput(inputString: inputNumber)
        if basicView.displayViewMatches(expectedResult: inputNumber, displayMatchBool: false).displayMatched {
            decimalPlaceZeroMenuItemButton.click()
        }
        basicView.clearButton.click()
    }
}
