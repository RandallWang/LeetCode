//
//  TwoSumTests.swift
//  LeetCodeTests
//
//  Created by Tianchi Wang on 2018/10/21.
//  Copyright © 2018 Tianchi Wang. All rights reserved.
//

import XCTest
@testable import LeetCode

class TwoSumTests: XCTestCase {

    let twoSum:TwoSum = TwoSum()
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample1() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let testArray = [2, 7, 11, 15]
        let target = 9
        let result = twoSum.twoSum(testArray, target)

        XCTAssertEqual(result, [0, 1])
    }
    
    func testExample2() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let testArray = [5, 5, 11, 15]
        let target = 10
        let result = twoSum.twoSum(testArray, target)
        
        XCTAssertEqual(result, [0, 1])
    }
}
