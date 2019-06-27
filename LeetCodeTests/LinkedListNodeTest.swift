//
//  LinkedListNodeTest.swift
//  LeetCodeTests
//
//  Created by Tianchi Wang on 6/27/19.
//  Copyright © 2019 Tianchi Wang. All rights reserved.
//

import XCTest
@testable import LeetCode

class LinkedListNodeTest: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample1() {
        let test = TwoWayListNode(val:1)
        test.append(2)
        test.append(3)
        test.append(4)
        test.append(5)
        test.append(6)
        test.append(7)
        test.append(8)
        test.append(9)
        
        print("\(test)")
    }
    
    func testExample2() {
        let test = TwoWayListNode(values: [1, 2, 3, 4, 5, 6, 7, 8, 9])
        
        print("\(test)")
    }


    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
