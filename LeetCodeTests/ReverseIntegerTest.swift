//
//  ReverseIntegerTest.swift
//  LeetCodeTests
//
//  Created by Tianchi Wang on 2019/1/11.
//  Copyright © 2019 Tianchi Wang. All rights reserved.
//

import XCTest
@testable import LeetCode

class ReverseIntegerTest: XCTestCase {

    let test = ReverseInteger()
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        
    }

    func testExample1() {
        let output = test.reverse(123)
        XCTAssertEqual(output, 321)
    }

    func testExample2() {
        let output = test.reverse(-123)
        XCTAssertEqual(output, -321)
    }

    func testExample3() {
        let output = test.reverse(120)
        XCTAssertEqual(output, 21)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
