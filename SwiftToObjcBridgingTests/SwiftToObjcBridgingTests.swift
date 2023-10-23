//
//  SwiftToObjcBridgingTests.swift
//  SwiftToObjcBridgingTests
//
//  Created by Atmaja on 23/10/23.
//  Copyright © 2023 Atmaja. All rights reserved.
//

import XCTest
@testable import SwiftToObjcBridging

class SwiftToObjcBridgingTests: XCTestCase {

    
    func testTheElements() {
        let vc = ViewController()
        XCTAssertEqual([2.0,4.0,6.0], vc.callObjcClass(inputArray:[1,2,3]))
        
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
