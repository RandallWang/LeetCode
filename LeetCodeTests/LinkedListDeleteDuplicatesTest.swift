//
//  LinkedListDeleteDuplicatesTest.swift
//  LeetCodeTests
//
//  Created by Tianchi Wang on 2018/12/30.
//  Copyright © 2018 Tianchi Wang. All rights reserved.
//

import XCTest
@testable import LeetCode

class LinkedListDeleteDuplicatesTest: XCTestCase {

    let test = LinkedListDeleteDuplicates()
    
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample1() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let inputList = ListNode.init(1)
        inputList.append(1)
        inputList.append(2)
        
        let target = ListNode.init(1)
        target.append(2)
        
        let result = test.deleteDuplicates(inputList)
        XCTAssertEqual(result, target)
    }
    
    func testExample2() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let inputList = ListNode.init(1)
        inputList.append(1)
        inputList.append(2)
        inputList.append(3)
        inputList.append(3)

        
        let target = ListNode.init(1)
        target.append(2)
        target.append(3)

        let result = test.deleteDuplicates(inputList)
        XCTAssertEqual(result, target)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
