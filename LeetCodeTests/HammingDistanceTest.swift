//
//  HammingDistanceTest.swift
//  LeetCodeTests
//
//  Created by Tianchi Wang on 2019/1/2.
//  Copyright © 2019 Tianchi Wang. All rights reserved.
//

import XCTest

@testable import LeetCode

class HammingDistanceTest: XCTestCase {

    let test = HammingDistance()
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let x = 1, y = 4
        
        let result1 = test.hammingDistance(x, y)
        let result2 = test.digits_hammingDistance(x, y)

        XCTAssertEqual(result1, 2)
        XCTAssertEqual(result2, 2)
    }

    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
