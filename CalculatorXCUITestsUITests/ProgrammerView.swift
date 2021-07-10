//
//  ProgrammerView.swift
//  CalculatorXCUITestsUITests
//
//  Created by Martin R Leon and Ryan T on 7/9/21.
//  Copyright © 2021 Ryan Touvell. All rights reserved.
//

import XCTest

class ProgrammerView: NSViewController {
    var app: XCUIApplication { BasicView().app }
    
    struct radioButtonLabels {
        static let eight = "8"
        static let ten = "10"
        static let sixteen = "16"
    }
    
    struct programmerButtonLabels {
        static let bitwiseExclusiveOr = "bitwise exclusive or"
    }
    
    var bitwiseExclusiveOrButton: XCUIElement { app.windows.firstMatch.buttons[programmerButtonLabels.bitwiseExclusiveOr].firstMatch }
    
    /*
 Group, 0x600003b20380, {{79.0, 699.0}, {400.0, 395.0}}, identifier: '_NS:815', Disabled
    Group, 0x600003b20460, {{79.0, 699.0}, {400.0, 43.0}}, identifier: '_NS:829', Disabled
      RadioGroup, 0x600003b20540, {{376.0, 710.0}, {89.0, 21.0}}, identifier: '_NS:834'
        RadioButton, 0x600003b20620, {{376.0, 710.0}, {31.0, 21.0}}, title: '8', value: 0
        RadioButton, 0x600003b20700, {{407.0, 710.0}, {30.5, 21.0}}, title: '10', value: 0
        RadioButton, 0x600003b207e0, {{437.5, 710.0}, {32.5, 21.0}}, title: '16', value: 1
      RadioGroup, 0x600003b208c0, {{95.0, 710.0}, {119.0, 21.0}}, identifier: '_NS:856'
        RadioButton, 0x600003b209a0, {{95.0, 710.0}, {50.0, 21.0}}, title: 'ASCII', value: 0
        RadioButton, 0x600003b20a80, {{145.0, 710.0}, {66.0, 21.0}}, title: 'Unicode', value: 0
      Button, 0x600003b20b60, {{235.5, 708.0}, {87.0, 27.0}}, identifier: '_NS:871', title: 'Hide Binary'
    Group, 0x600003b20c40, {{79.0, 742.0}, {400.0, 69.0}}, identifier: '_NS:9', Disabled
      ScrollView, 0x600003b20d20, {{104.0, 747.0}, {350.0, 54.0}}, identifier: '_NS:16', label: 'editable bit field', Disabled
        CheckBox, 0x600003b20e00, {{372.0, 775.0}, {11.0, 13.0}}, identifier: '_NS:22', title: '0', value: 0
        CheckBox, 0x600003b20ee0, {{381.0, 775.0}, {11.0, 13.0}}, identifier: '_NS:41', title: '0', value: 0
        CheckBox, 0x600003b20fc0, {{222.0, 775.0}, {11.0, 13.0}}, identifier: '_NS:49', title: '0', value: 0
        CheckBox, 0x600003b210a0, {{222.0, 748.0}, {11.0, 13.0}}, identifier: '_NS:57', title: '0', value: 0
        CheckBox, 0x600003b21180, {{139.0, 748.0}, {11.0, 13.0}}, identifier: '_NS:65', title: '0', value: 0
        CheckBox, 0x600003b21260, {{153.0, 775.0}, {11.0, 13.0}}, identifier: '_NS:73', title: '0', value: 0
        CheckBox, 0x600003b21340, {{306.0, 748.0}, {11.0, 13.0}}, identifier: '_NS:81', title: '0', value: 0
        CheckBox, 0x600003b21420, {{414.0, 775.0}, {11.0, 13.0}}, identifier: '_NS:89', title: '0', value: 0
        CheckBox, 0x600003b21500, {{162.0, 748.0}, {11.0, 13.0}}, identifier: '_NS:97', title: '0', value: 0
        CheckBox, 0x600003b215e0, {{130.0, 748.0}, {11.0, 13.0}}, identifier: '_NS:105', title: '0', value: 0
        CheckBox, 0x600003b216c0, {{204.0, 775.0}, {11.0, 13.0}}, identifier: '_NS:113', title: '0', value: 0
        CheckBox, 0x600003b217a0, {{121.0, 775.0}, {11.0, 13.0}}, identifier: '_NS:121', title: '0', value: 0
        CheckBox, 0x600003b21880, {{321.0, 748.0}, {11.0, 13.0}}, identifier: '_NS:129', title: '0', value: 0
        CheckBox, 0x600003b21960, {{112.0, 775.0}, {11.0, 13.0}}, identifier: '_NS:137', title: '0', value: 0
        CheckBox, 0x600003b21a40, {{279.0, 748.0}, {11.0, 13.0}}, identifier: '_NS:145', title: '0', value: 0
        CheckBox, 0x600003b21b20, {{405.0, 748.0}, {11.0, 13.0}}, identifier: '_NS:153', title: '0', value: 0
        StaticText, 0x600003b21c00, {{272.0, 786.0}, {24.0, 16.0}}, identifier: '_NS:161', label: 'marker for bit 15', value: 15
        CheckBox, 0x600003b21ce0, {{297.0, 775.0}, {11.0, 13.0}}, identifier: '_NS:183', title: '0', value: 0
        CheckBox, 0x600003b21dc0, {{414.0, 748.0}, {11.0, 13.0}}, identifier: '_NS:191', title: '0', value: 0
        CheckBox, 0x600003b21ea0, {{255.0, 775.0}, {11.0, 13.0}}, identifier: '_NS:199', title: '0', value: 0
        CheckBox, 0x600003b21f80, {{363.0, 775.0}, {11.0, 13.0}}, identifier: '_NS:207', title: '0', value: 0
        CheckBox, 0x600003b22060, {{321.0, 775.0}, {11.0, 13.0}}, identifier: '_NS:215', title: '0', value: 0
        StaticText, 0x600003b22140, {{430.0, 786.0}, {15.0, 16.0}}, identifier: '_NS:223', label: 'marker for bit 0', value: 0
        CheckBox, 0x600003b22220, {{279.0, 775.0}, {11.0, 13.0}}, identifier: '_NS:229', title: '0', value: 0
        CheckBox, 0x600003b22300, {{246.0, 748.0}, {11.0, 13.0}}, identifier: '_NS:237', title: '0', value: 0
        CheckBox, 0x600003b223e0, {{130.0, 775.0}, {11.0, 13.0}}, identifier: '_NS:245', title: '0', value: 0
        CheckBox, 0x600003b224c0, {{139.0, 775.0}, {11.0, 13.0}}, identifier: '_NS:253', title: '0', value: 0
        CheckBox, 0x600003b225a0, {{204.0, 748.0}, {11.0, 13.0}}, identifier: '_NS:261', title: '0', value: 0
        CheckBox, 0x600003b22680, {{405.0, 775.0}, {11.0, 13.0}}, identifier: '_NS:269', title: '0', value: 0
        CheckBox, 0x600003b22760, {{390.0, 775.0}, {11.0, 13.0}}, identifier: '_NS:277', title: '0', value: 0
        CheckBox, 0x600003b22840, {{381.0, 748.0}, {11.0, 13.0}}, identifier: '_NS:285', title: '0', value: 0
        CheckBox, 0x600003b22920, {{297.0, 748.0}, {11.0, 13.0}}, identifier: '_NS:293', title: '0', value: 0
        CheckBox, 0x600003b22a00, {{213.0, 748.0}, {11.0, 13.0}}, identifier: '_NS:301', title: '0', value: 0
        CheckBox, 0x600003b22ae0, {{112.0, 748.0}, {11.0, 13.0}}, identifier: '_NS:309', title: '0', value: 0
        CheckBox, 0x600003b22bc0, {{423.0, 748.0}, {11.0, 13.0}}, identifier: '_NS:317', title: '0', value: 0
        CheckBox, 0x600003b22ca0, {{330.0, 748.0}, {11.0, 13.0}}, identifier: '_NS:325', title: '0', value: 0
        CheckBox, 0x600003b22d80, {{339.0, 748.0}, {11.0, 13.0}}, identifier: '_NS:333', title: '0', value: 0
        CheckBox, 0x600003b22e60, {{288.0, 775.0}, {11.0, 13.0}}, identifier: '_NS:341', title: '0', value: 0
        StaticText, 0x600003b22f40, {{422.0, 759.0}, {29.0, 16.0}}, identifier: '_NS:349', label: 'marker for bit 32', value: 32
        CheckBox, 0x600003b23020, {{213.0, 775.0}, {11.0, 13.0}}, identifier: '_NS:356', title: '0', value: 0
        CheckBox, 0x600003b23100, {{171.0, 775.0}, {11.0, 13.0}}, identifier: '_NS:364', title: '0', value: 0
        CheckBox, 0x600003b231e0, {{423.0, 775.0}, {11.0, 13.0}}, identifier: '_NS:372', title: '0', value: 0
        CheckBox, 0x600003b232c0, {{264.0, 775.0}, {11.0, 13.0}}, identifier: '_NS:380', title: '0', value: 0
        CheckBox, 0x600003b233a0, {{339.0, 775.0}, {11.0, 13.0}}, identifier: '_NS:388', title: '0', value: 0
        CheckBox, 0x600003b23480, {{347.0, 748.0}, {11.0, 13.0}}, identifier: '_NS:396', title: '0', value: 0
        CheckBox, 0x600003b23560, {{288.0, 748.0}, {11.0, 13.0}}, identifier: '_NS:404', title: '0', value: 0
        CheckBox, 0x600003b23640, {{153.0, 748.0}, {11.0, 13.0}}, identifier: '_NS:412', title: '0', value: 0
        CheckBox, 0x600003b23720, {{432.0, 748.0}, {11.0, 13.0}}, identifier: '_NS:420', title: '0', value: 0
        CheckBox, 0x600003b23800, {{246.0, 775.0}, {11.0, 13.0}}, identifier: '_NS:428', title: '0', value: 0
        CheckBox, 0x600003b238e0, {{363.0, 748.0}, {11.0, 13.0}}, identifier: '_NS:436', title: '0', value: 0
        CheckBox, 0x600003b239c0, {{330.0, 775.0}, {11.0, 13.0}}, identifier: '_NS:444', title: '0', value: 0
        CheckBox, 0x600003b23aa0, {{306.0, 775.0}, {11.0, 13.0}}, identifier: '_NS:452', title: '0', value: 0
        CheckBox, 0x600003b23b80, {{121.0, 748.0}, {11.0, 13.0}}, identifier: '_NS:460', title: '0', value: 0
        CheckBox, 0x600003b23c60, {{179.0, 748.0}, {11.0, 13.0}}, identifier: '_NS:468', title: '0', value: 0
        CheckBox, 0x600003b23d40, {{237.0, 748.0}, {11.0, 13.0}}, identifier: '_NS:476', title: '0', value: 0
        CheckBox, 0x600003b23e20, {{162.0, 775.0}, {11.0, 13.0}}, identifier: '_NS:484', title: '0', value: 0
        CheckBox, 0x600003b23f00, {{171.0, 748.0}, {11.0, 13.0}}, identifier: '_NS:492', title: '0', value: 0
        CheckBox, 0x600003b11420, {{255.0, 748.0}, {11.0, 13.0}}, identifier: '_NS:500', title: '0', value: 0
        StaticText, 0x600003b11f80, {{106.0, 786.0}, {24.0, 16.0}}, identifier: '_NS:508', label: 'marker for bit 31', value: 31
        CheckBox, 0x600003b11ea0, {{264.0, 748.0}, {11.0, 13.0}}, identifier: '_NS:515', title: '0', value: 0
        CheckBox, 0x600003b116c0, {{195.0, 748.0}, {11.0, 13.0}}, identifier: '_NS:523', title: '0', value: 0
        CheckBox, 0x600003b115e0, {{390.0, 748.0}, {11.0, 13.0}}, identifier: '_NS:531', title: '0', value: 0
        CheckBox, 0x600003b11260, {{372.0, 748.0}, {11.0, 13.0}}, identifier: '_NS:539', title: '0', value: 0
        CheckBox, 0x600003b11180, {{432.0, 775.0}, {11.0, 13.0}}, identifier: '_NS:547', title: '0', value: 0
        CheckBox, 0x600003b117a0, {{179.0, 775.0}, {11.0, 13.0}}, identifier: '_NS:555', title: '0', value: 0
        CheckBox, 0x600003b11500, {{347.0, 775.0}, {11.0, 13.0}}, identifier: '_NS:563', title: '0', value: 0
        CheckBox, 0x600003b11960, {{237.0, 775.0}, {11.0, 13.0}}, identifier: '_NS:571', title: '0', value: 0
        CheckBox, 0x600003b11a40, {{195.0, 775.0}, {11.0, 13.0}}, identifier: '_NS:579', title: '0', value: 0
        StaticText, 0x600003b11880, {{272.0, 759.0}, {24.0, 16.0}}, identifier: '_NS:587', label: 'marker for bit 47', value: 47
        StaticText, 0x600003b11b20, {{106.0, 759.0}, {24.0, 16.0}}, identifier: '_NS:594', label: 'marker for bit 63', value: 63
    Group, 0x600003b11dc0, {{78.0, 812.0}, {400.0, 282.0}}, identifier: '_NS:900', Disabled
      Button, 0x600003b12ae0, {{78.0, 812.0}, {58.0, 48.0}}, identifier: '_NS:677', title: 'AND', label: 'bitwise and'
      Button, 0x600003b12a00, {{135.0, 812.0}, {58.0, 48.0}}, identifier: '_NS:755', title: 'OR', label: 'bitwise or'
      Button, 0x600003b12060, {{192.0, 812.0}, {58.0, 48.0}}, identifier: '_NS:903', title: 'D'
      Button, 0x600003b12140, {{249.0, 812.0}, {58.0, 48.0}}, identifier: '_NS:918', title: 'E'
      Button, 0x600003b12220, {{306.0, 812.0}, {58.0, 48.0}}, identifier: '_NS:931', title: 'F'
      Button, 0x600003b12300, {{363.0, 812.0}, {58.0, 48.0}}, identifier: '_NS:800', title: 'AC', label: 'clear all'
      Button, 0x600003b123e0, {{420.0, 812.0}, {58.0, 48.0}}, identifier: '_NS:693', title: 'C', label: 'clear'
      Button, 0x600003b124c0, {{78.0, 859.0}, {58.0, 48.0}}, identifier: '_NS:741', title: 'NOR', label: 'bitwise nor'
      Button, 0x600003b125a0, {{135.0, 859.0}, {58.0, 48.0}}, identifier: '_NS:785', title: 'XOR', label: 'bitwise exclusive or'
      Button, 0x600003b12680, {{192.0, 859.0}, {58.0, 48.0}}, identifier: '_NS:944', title: 'A'
      Button, 0x600003b12760, {{249.0, 859.0}, {58.0, 48.0}}, identifier: '_NS:957', title: 'B'
      Button, 0x600003b12840, {{306.0, 859.0}, {58.0, 48.0}}, identifier: '_NS:970', title: 'C'
      Button, 0x600003b12920, {{363.0, 859.0}, {58.0, 48.0}}, identifier: '_NS:982', title: 'RoL', label: 'rotate left'
      Button, 0x600003b131e0, {{420.0, 859.0}, {58.0, 48.0}}, identifier: '_NS:994', title: 'RoR', label: 'rotate right'
      Button, 0x600003b13100, {{78.0, 906.0}, {58.0, 48.0}}, identifier: '_NS:1007', label: 'shift left'
      Button, 0x600003b12bc0, {{135.0, 906.0}, {58.0, 48.0}}, identifier: '_NS:1022', label: 'shift right'
      Button, 0x600003b12ca0, {{192.0, 906.0}, {58.0, 48.0}}, identifier: '_NS:1037', title: '7'
      Button, 0x600003b12d80, {{249.0, 906.0}, {58.0, 48.0}}, identifier: '_NS:1049', title: '8'
      Button, 0x600003b12e60, {{306.0, 906.0}, {58.0, 48.0}}, identifier: '_NS:1060', title: '9'
      Button, 0x600003b12f40, {{363.0, 906.0}, {58.0, 48.0}}, identifier: '_NS:1072', title: '2’s', label: 'twos complement'
      Button, 0x600003b13020, {{420.0, 906.0}, {58.0, 48.0}}, identifier: '_NS:1084', title: '1’s', label: 'ones complement'
      Button, 0x600003b13aa0, {{78.0, 953.0}, {58.0, 48.0}}, identifier: '_NS:1096', label: 'shift left y bits'
      Button, 0x600003b139c0, {{135.0, 953.0}, {58.0, 48.0}}, identifier: '_NS:1109', label: 'shift right y bits'
      Button, 0x600003b132c0, {{192.0, 953.0}, {58.0, 48.0}}, identifier: '_NS:1122', title: '4'
      Button, 0x600003b133a0, {{249.0, 953.0}, {58.0, 48.0}}, identifier: '_NS:1134', title: '5'
      Button, 0x600003b13480, {{306.0, 953.0}, {58.0, 48.0}}, identifier: '_NS:1146', title: '6'
      Button, 0x600003b13560, {{363.0, 953.0}, {58.0, 48.0}}, identifier: '÷', label: 'divide'
      Button, 0x600003b13640, {{420.0, 953.0}, {58.0, 48.0}}, identifier: '_NS:770', label: 'minus'
      Button, 0x600003b13720, {{78.0, 1000.0}, {115.0, 48.0}}, identifier: '_NS:1158', title: 'byte flip'
      Button, 0x600003b13800, {{192.0, 1000.0}, {58.0, 48.0}}, identifier: '_NS:1170', title: '1'
      Button, 0x600003b138e0, {{249.0, 1000.0}, {58.0, 48.0}}, identifier: '_NS:1181', title: '2'
      Button, 0x600003b13b80, {{306.0, 1000.0}, {58.0, 48.0}}, identifier: '_NS:1193', title: '3'
      Button, 0x600003b13c60, {{363.0, 1000.0}, {58.0, 48.0}}, identifier: '_NS:725', label: 'times'
      Button, 0x600003b13d40, {{420.0, 1000.0}, {58.0, 48.0}}, identifier: '_NS:653', label: 'plus'
      Button, 0x600003b13e20, {{78.0, 1047.0}, {115.0, 48.0}}, identifier: '_NS:1205', title: 'word flip'
      Button, 0x600003b13f00, {{192.0, 1047.0}, {58.0, 48.0}}, identifier: '_NS:1217', title: 'FF'
      Button, 0x600003b11ce0, {{249.0, 1047.0}, {58.0, 48.0}}, identifier: '_NS:1229', title: '0'
      Button, 0x600003b11c00, {{306.0, 1047.0}, {58.0, 48.0}}, identifier: '_NS:1240', title: '00', label: '0 0'
      Button, 0x600003b11340, {{363.0, 1047.0}, {115.0, 48.0}}, identifier: '_NS:1252', title: 'enter', label: 'equals'
 */
}
