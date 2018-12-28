//
//  RemoveDuplicatesFromSortedArray.swift
//  LeetCodeTests
//
//  Created by Tianchi Wang on 2018/12/21.
//  Copyright © 2018 Tianchi Wang. All rights reserved.
//

import XCTest
@testable import LeetCode

class RemoveDuplicatesFromSortedArray: XCTestCase {

    let test:removeDuplicates = removeDuplicates()
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        var nums = [0,0,1,1,1,2,2,3,3,4]
        let length = test.removeDuplicates(&nums)
        var nums2 = [0,0,1,1,1,2,2,3,3,4]
        let length2 = test.removeDuplicates2(&nums2)
        XCTAssertEqual(length, 5)
        XCTAssertEqual(length2, 5)
    }

    func testCase1() {
        var nums = [1, 1]
        let length = test.removeDuplicates(&nums)
        var nums2 = [1, 1]
        let length2 = test.removeDuplicates2(&nums2)
        XCTAssertEqual(length, 1)
        XCTAssertEqual(length2, 1)
    }
    
    func testCase2() {
        var nums = [1, 1, 1]
        let length = test.removeDuplicates(&nums)
        var nums2 = [1, 1, 1]
        let length2 = test.removeDuplicates2(&nums2)
        XCTAssertEqual(length, 1)
        XCTAssertEqual(length2, 1)
    }
    
    func testCase3() {
        var nums = [0, 0, 0, 0]
        let length = test.removeDuplicates(&nums)
        var nums2 = [0, 0, 0, 0]
        let length2 = test.removeDuplicates2(&nums2)

        XCTAssertEqual(length, 1)
        XCTAssertEqual(length2, 1)
    }


    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
