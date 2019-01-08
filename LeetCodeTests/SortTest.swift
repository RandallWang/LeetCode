//
//  SortTest.swift
//  LeetCodeTests
//
//  Created by Tianchi Wang on 2019/1/7.
//  Copyright © 2019 Tianchi Wang. All rights reserved.
//

import XCTest
@testable import LeetCode

class SortTest: XCTestCase {
    
    let test:Sort<Int> = Sort()

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testBubbleSort() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        var example = [9, 1, 5, 8, 3, 7, 2, 4, 6]
        test.bubbleSort(&example)
        
        XCTAssertEqual(example, [1, 2, 3, 4, 5, 6, 7, 8, 9])
    }
    
    func testSelectSort() {
        var example = [9, 1, 5, 8, 3, 7, 2, 4, 6]
        test.selectSort(&example)
        
        XCTAssertEqual(example, [1, 2, 3, 4, 5, 6, 7, 8, 9])

    }
    
    func testInsertSort() {
        var example = [9, 1, 5, 8, 3, 7, 2, 4, 6]
        test.insertSort(&example)
        
        XCTAssertEqual(example, [1, 2, 3, 4, 5, 6, 7, 8, 9])
    }
    
    func testHeapSort() {
        var example = [9, 1, 5, 8, 3, 7, 2, 4, 6]
        test.heapSort(&example)
        
        XCTAssertEqual(example, [1, 2, 3, 4, 5, 6, 7, 8, 9])
    }



    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
            testBubbleSort()
        }
    }

}
