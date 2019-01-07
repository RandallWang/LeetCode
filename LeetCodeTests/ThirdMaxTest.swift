//
//  ThirdMaxTest.swift
//  LeetCodeTests
//
//  Created by Tianchi Wang on 2019/1/6.
//  Copyright © 2019 Tianchi Wang. All rights reserved.
//

import XCTest
@testable import LeetCode


class ThirdMaxTest: XCTestCase {

    let test = thirdMax()
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample1() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let input = [3, 2, 1]
        
        let result = test.thirdMax(input)
            
        XCTAssertEqual(result, 1)
    }
    
    func testExample2() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let input = [1, 2]
        
        let result = test.thirdMax(input)
        
        XCTAssertEqual(result, 2)
    }

    func testExample3() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let input = [2, 2, 3, 1]
        
        let result = test.thirdMax(input)
        
        XCTAssertEqual(result, 1)
    }


    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
