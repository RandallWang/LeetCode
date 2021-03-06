//
//  ReverseListTest.swift
//  LeetCodeTests
//
//  Created by Tianchi Wang on 2018/12/27.
//  Copyright © 2018 Tianchi Wang. All rights reserved.
//

import XCTest
@testable import LeetCode

class ReverseListTest: XCTestCase {

    let test = reverseList()
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample1() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let listNode = ListNode.init(1)
        listNode.next = ListNode.init(2)
        listNode.next?.next = ListNode.init(3)
        listNode.next?.next?.next = ListNode.init(4)
        listNode.next?.next?.next?.next = ListNode.init(5)
    
        let resultNode = ListNode.init(5)
        resultNode.next = ListNode.init(4)
        resultNode.next?.next = ListNode.init(3)
        resultNode.next?.next?.next = ListNode.init(2)
        resultNode.next?.next?.next?.next = ListNode.init(1)

        let resultListNode1 = test.dull_reverseList(listNode)
        let resultListNode2 = test.Iterative_reverseList(listNode)

        XCTAssertEqual(resultListNode1, resultNode)
        XCTAssertEqual(resultListNode2, resultNode)
    }
    
    func testExample2() {
        let listNode = ListNode.init(1)
        listNode.next = ListNode.init(2)
        listNode.next?.next = ListNode.init(3)
        listNode.next?.next?.next = ListNode.init(4)
        listNode.next?.next?.next?.next = ListNode.init(5)
        
        let resultNode = ListNode.init(5)
        resultNode.next = ListNode.init(4)
        resultNode.next?.next = ListNode.init(3)
        resultNode.next?.next?.next = ListNode.init(2)
        resultNode.next?.next?.next?.next = ListNode.init(1)

        let resultListNode3 = test.Recursive_reverseList(listNode)
        
        XCTAssertEqual(resultListNode3, resultNode)
    }
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
