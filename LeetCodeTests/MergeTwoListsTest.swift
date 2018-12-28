//
//  MergeTwoListsTest.swift
//  LeetCodeTests
//
//  Created by Tianchi Wang on 2018/12/27.
//  Copyright © 2018 Tianchi Wang. All rights reserved.
//

import XCTest
@testable import LeetCode

class MergeTwoListsTest: XCTestCase {

    let test: mergeTwoLists = mergeTwoLists()
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let inputList1: ListNode = ListNode.init(1)
        inputList1.append(2)
        inputList1.append(4)
        
        let inputList2: ListNode = ListNode.init(1)
        inputList2.append(3)
        inputList2.append(4)
        
        let target: ListNode = ListNode.init(1)
        target.append(1)
        target.append(2)
        target.append(3)
        target.append(4)
        target.append(4)

        
        let result = test.mergeTwoLists(inputList1, inputList2)
        
        XCTAssertEqual(result, target)
    }
    

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
