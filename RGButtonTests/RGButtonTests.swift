//
//  RGButtonTests.swift
//  RGButtonTests
//
//  Created by Palvision Macbook Air on 1/25/21.
//

import XCTest
@testable import RGButton

class RGButtonTests: XCTestCase {
	
	var rgButton: RGButton!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
		self.rgButton = RGButton()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
		XCTAssertNotNil(self.rgButton)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
			
        }
    }

}
