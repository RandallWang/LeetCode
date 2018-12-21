//
//  TwoSumIITest.swift
//  LeetCodeTests
//
//  Created by Tianchi Wang on 2018/10/21.
//  Copyright © 2018 Tianchi Wang. All rights reserved.
//

import XCTest
@testable import LeetCode

class TwoSumIITest: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample1() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let testArray = [2,7,11,15]
        let target = 9
        
        let result1 = TwoSumII.bruteForce(testArray, target: target)
        let result2 = TwoSumII.twoSum(testArray, target)

        XCTAssertEqual(result1, [1,2])
        XCTAssertEqual(result2, [1,2])
    }
    
    func testExample2() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let testArray = [5,25,75]
        let target = 100
        
        let result1 = TwoSumII.bruteForce(testArray, target: target)
        let result2 = TwoSumII.twoSum(testArray, target)

        XCTAssertEqual(result1, [2,3])
        XCTAssertEqual(result2, [2,3])
    }

    
    func testExample3() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let testArray = [4,4,11,15]
        let target = 8
        
        let result1 = TwoSumII.bruteForce(testArray, target: target)
        let result2 = TwoSumII.twoSum(testArray, target)

        XCTAssertEqual(result1, [1,2])
        XCTAssertEqual(result2, [1,2])
    }


    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
