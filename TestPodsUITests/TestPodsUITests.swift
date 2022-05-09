//
//  TestPodsUITests.swift
//  TestPodsUITests
//
//  Created by RAHUL PRADEV on 09/05/22.
//

import XCTest

class TestPodsUITests: XCTestCase {

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        setupSnapshot(app)
        app.launch()
        
        snapshot("Home Screen")
    }

}
