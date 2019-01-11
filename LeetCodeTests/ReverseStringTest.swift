//
//  ReverseStringTest.swift
//  LeetCodeTests
//
//  Created by Tianchi Wang on 2019/1/11.
//  Copyright © 2019 Tianchi Wang. All rights reserved.
//

import XCTest
@testable import LeetCode


class ReverseStringTest: XCTestCase {

    let test = ReverseString()
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample1() {
        let input = "A man, a plan, a canal: Panama"
        
        XCTAssertEqual(test.reverseString(input), "amanaP :lanac a ,nalp a ,nam A")
    }
    
    func testExample2() {
        let input = "hello"
        
        XCTAssertEqual(test.reverseString(input), "olleh")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
