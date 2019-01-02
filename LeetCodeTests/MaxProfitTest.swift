//
//  MaxProfitTest.swift
//  LeetCodeTests
//
//  Created by Tianchi Wang on 2019/1/2.
//  Copyright © 2019 Tianchi Wang. All rights reserved.
//

import XCTest
@testable import LeetCode


class MaxProfitTest: XCTestCase {

    let test = maxProfit()
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample1() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let input = [7,1,5,3,6,4]
        
        let result1 = test.bruteForce_maxProfit(input)
        let result2 = test.maxProfit(input)

        XCTAssertEqual(result1, 5)
        XCTAssertEqual(result2, 5)
    }
    
    func testExample2() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let input = [7,6,4,3,1]
        
        let result1 = test.bruteForce_maxProfit(input)
        let result2 = test.maxProfit(input)

        XCTAssertEqual(result1, 0)
        XCTAssertEqual(result2, 0)
    }


    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
