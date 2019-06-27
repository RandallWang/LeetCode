//
//  LinkedListTest.swift
//  LeetCodeTests
//
//  Created by Tianchi Wang on 2019/1/10.
//  Copyright © 2019 Tianchi Wang. All rights reserved.
//

import XCTest
@testable import LeetCode


class LinkedListTest: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        
    }

    func testExample1() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let linkedList = MyLinkedList.init()
        linkedList.addAtHead(7)
        linkedList.addAtHead(2)
        linkedList.addAtHead(1)
        linkedList.addAtIndex(3, 0)
        linkedList.deleteAtIndex(2)
        linkedList.addAtHead(6)
        linkedList.addAtTail(4)
        let result = linkedList.get(4)
        linkedList.addAtHead(4)
        linkedList.addAtIndex(5, 0)
        linkedList.addAtHead(6)
        
        XCTAssertEqual(result, 4)
    }
    

    func testExample2() {
        let linkedList = MyLinkedList.init()
        linkedList.addAtHead(56)
        var result = linkedList.get(1)
        XCTAssertEqual(result, -1)
        
        linkedList.addAtHead(41)
        linkedList.addAtTail(98)
        result = linkedList.get(3)
        XCTAssertEqual(result, -1)
        
        linkedList.addAtIndex(1, 33)
        linkedList.addAtHead(72)
        linkedList.addAtHead(52)
        linkedList.addAtHead(89)
        linkedList.addAtHead(0)
        linkedList.addAtHead(98)
        linkedList.addAtIndex(7, 97)
        linkedList.addAtIndex(2, 51)
        result = linkedList.get(1)
        XCTAssertEqual(result, 0)
        result = linkedList.get(6)
        XCTAssertEqual(result, 41)
        
        linkedList.addAtIndex(6, 49)
        result = linkedList.get(8)
        XCTAssertEqual(result, 33)
        
        linkedList.addAtHead(72)
        linkedList.addAtIndex(7, 8)
        linkedList.addAtIndex(8, 58)
        linkedList.addAtHead(10)
        linkedList.addAtIndex(3, 6)
        linkedList.addAtIndex(9, 61)
        linkedList.addAtHead(63)
        result = linkedList.get(16)
        XCTAssertEqual(result, 97)
        
        linkedList.deleteAtIndex(7)
        linkedList.addAtIndex(16, 55)
        result = linkedList.get(4)
        XCTAssertEqual(result, 6)
        
        result = linkedList.get(10)
        XCTAssertEqual(result, 8)
        
        linkedList.deleteAtIndex(6)
        linkedList.addAtTail(96)
        linkedList.addAtHead(69)
        linkedList.addAtTail(20)
        linkedList.addAtHead(3)
        linkedList.addAtTail(44)
        linkedList.addAtTail(4)
        linkedList.addAtIndex(8, 16)
        
        result = linkedList.get(15)
        XCTAssertEqual(result, 41)
        
        result = linkedList.get(21)
        XCTAssertEqual(result, 96)
        
        linkedList.addAtHead(41)
        linkedList.deleteAtIndex(1)
        linkedList.deleteAtIndex(11)
        result = linkedList.get(21)
        XCTAssertEqual(result, 20)

        linkedList.deleteAtIndex(22)
        result = linkedList.get(2)
        XCTAssertEqual(result, 63)
        
        linkedList.addAtIndex(5, 7)
        linkedList.addAtTail(62)
        linkedList.addAtHead(95)
        linkedList.addAtTail(91)
        linkedList.addAtHead(69)
        result = linkedList.get(24)
        XCTAssertEqual(result, 20)
        
        linkedList.addAtTail(51)
        linkedList.addAtTail(94)
        linkedList.addAtHead(93)
        result = linkedList.get(29)
        XCTAssertEqual(result, 51)
        
        result = linkedList.get(10)
        XCTAssertEqual(result, 6)
        
        linkedList.addAtHead(68)
        linkedList.addAtHead(13)
        linkedList.addAtIndex(32, 42)
        linkedList.addAtHead(48)
        linkedList.addAtHead(55)
        linkedList.addAtHead(79)
        linkedList.addAtHead(5)
        linkedList.addAtHead(36)
        linkedList.addAtTail(32)
//        XCTAssertEqual(linkedList.get(39), 94)
        linkedList.addAtIndex(25, 40)
        linkedList.addAtHead(8)
        linkedList.addAtTail(68)
        linkedList.deleteAtIndex(30)
        linkedList.addAtHead(66)
        linkedList.addAtHead(92)
        linkedList.addAtIndex(27, 26)
        linkedList.addAtTail(90)
        linkedList.addAtIndex(11, 19)
        linkedList.addAtTail(68)
        linkedList.addAtIndex(17, 62)
        
        result = linkedList.get(15)
        XCTAssertEqual(result, 69)

        linkedList.addAtIndex(17, 97)
        linkedList.addAtIndex(35, 89)
        
        result = linkedList.get(44)
        XCTAssertEqual(result, 51)

        linkedList.addAtTail(90)
        linkedList.addAtTail(67)
        linkedList.addAtHead(2)
        linkedList.addAtHead(51)
        linkedList.addAtHead(30)
        linkedList.deleteAtIndex(38)
        linkedList.addAtHead(30)
        linkedList.addAtTail(43)
        linkedList.addAtTail(76)
        linkedList.addAtTail(16)
        linkedList.addAtTail(38)
        linkedList.addAtHead(82)
        linkedList.addAtHead(81)
        linkedList.addAtTail(67)
        linkedList.addAtTail(67)
        linkedList.addAtIndex(3, 16)
        
        result = linkedList.get(57)
        XCTAssertEqual(result, 90)
    }
    
    func testExample3() {
        let linkedList = MyLinkedList.init()
        linkedList.addAtHead(8)
        XCTAssertEqual(linkedList.get(1), -1)
        linkedList.addAtTail(81)
        linkedList.deleteAtIndex(2)
        linkedList.addAtHead(26)
        linkedList.deleteAtIndex(2)
        XCTAssertEqual(linkedList.get(1), 8)
        
        linkedList.addAtTail(24)
        linkedList.addAtHead(15)
        linkedList.addAtTail(0)
        linkedList.addAtTail(13)
        linkedList.addAtTail(1)
        linkedList.addAtIndex(6, 33)
        XCTAssertEqual(linkedList.get(6), 33)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
