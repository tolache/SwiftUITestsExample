//
//  testUITests.swift
//  testUITests
//
//  Created by madi on 3/30/19.
//  Copyright © 2019 com.madi.barcode. All rights reserved.
//

import XCTest

class testUITests: XCTestCase {
    var app: XCUIApplication!

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        app = XCUIApplication()
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        app.launch()
        print("Application has been launched.")

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        let textToType = "Hello"
        let typeText = app.textFields["TYPE_TEXT"]
        XCTAssertTrue(typeText.exists, "Text field is missing")
        
        typeText.tap()
        typeText.typeText(textToType)
        
        let pasteButton = app.buttons["PASTE_BUTTON"]
        XCTAssertTrue(pasteButton.exists, "Paste button is missing")
        
        pasteButton.tap()
        
        let typeLabel = app.staticTexts["TYPE_LABEL"]
        XCTAssertTrue(typeLabel.exists, "Display label is missing")
        XCTAssertEqual(typeLabel.label, textToType, "Label is missing the value '\(typeText)'")
    }

}
