//
//  LinkedListIsPalindromeTest.swift
//  LeetCodeTests
//
//  Created by Tianchi Wang on 2018/12/31.
//  Copyright © 2018 Tianchi Wang. All rights reserved.
//

import XCTest
@testable import LeetCode

class LinkedListIsPalindromeTest: XCTestCase {
    
    let test = LinkedListIsPalindrome()

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample1() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let input = ListNode.init(1)
        input.next = ListNode.init(2)
        
        let result = test.isPalindrome(input)
        
        XCTAssertFalse(result)
    }
    
    func testExample2() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let input = ListNode.init(1)
        input.next = ListNode.init(2)
        input.next?.next = ListNode.init(2)
        input.next?.next?.next = ListNode.init(1)
        
        let result = test.isPalindrome(input)
        
        XCTAssertTrue(result)

    }
    
    
    func testExample3() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let input = ListNode.init(1)
        input.next = ListNode.init(0)
        input.next?.next = ListNode.init(0)
        
        let result = test.isPalindrome(input)
        
        XCTAssertFalse(result)
        
    }


    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
