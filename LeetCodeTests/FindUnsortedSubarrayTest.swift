//
//  FindUnsortedSubarrayTest.swift
//  LeetCodeTests
//
//  Created by Tianchi Wang on 2019/1/3.
//  Copyright © 2019 Tianchi Wang. All rights reserved.
//

import XCTest
@testable import LeetCode


class FindUnsortedSubarrayTest: XCTestCase {

    let test = FindUnsortedSubarray()
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

//    func testExample1() {
//        // This is an example of a functional test case.
//        // Use XCTAssert and related functions to verify your tests produce the correct results.
//        let input = [2, 6, 4, 8, 10, 9, 15]
//
//        let result = test.findUnsortedSubarray(input)
//        XCTAssertEqual(result, 5)
//    }
    
    
    func testExample2() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let input = [1,2,3,4]
        
        let result = test.findUnsortedSubarray(input)
        XCTAssertEqual(result, 0)
    }

    func testExample3() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let input = [1,2,3,3,3]
        
        let result = test.findUnsortedSubarray(input)
        XCTAssertEqual(result, 0)
    }
    
//    func testExample4() {
//        // This is an example of a functional test case.
//        // Use XCTAssert and related functions to verify your tests produce the correct results.
//        let input = [1,3,2,2,2]
//
//        let result = test.findUnsortedSubarray(input)
//        XCTAssertEqual(result, 4)
//    }
//
//    func testExample5() {
//        let input = [2,3,3,2,4]
//
//        let result = test.findUnsortedSubarray(input)
//        XCTAssertEqual(result, 3)
//    }
//
    func testExample6() {
        let input = [1,1]
        
        let result = test.findUnsortedSubarray(input)
        XCTAssertEqual(result, 0)
    }

//    func testExample7() {
//        let input = [1,2,4,5,3]
//        
//        let result = test.findUnsortedSubarray(input)
//        XCTAssertEqual(result, 3)
//    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
