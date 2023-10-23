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
 let vc = ViewController()
    
    func testTheValidResult() {
       
        XCTAssertEqual([2.0,4.0,6.0], vc.callObjcClass(inputArray:[1,2,3]))
        
    }
    func testTheInvalidResult() {
       
        XCTAssertNotEqual([2.0,5.0,9.0], vc.callObjcClass(inputArray:[1,2,3]))
        
    }
    func testInvalidZeroArray() {
       XCTAssertNotEqual([2.0,4.0,6.0], vc.callObjcClass(inputArray:[0,0,0]))
    }

    

}
