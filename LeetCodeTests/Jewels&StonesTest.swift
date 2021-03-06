//
//  Jewels&StonesTest.swift
//  LeetCodeTests
//
//  Created by Tianchi Wang on 2018/12/28.
//  Copyright © 2018 Tianchi Wang. All rights reserved.
//

import XCTest
@testable import LeetCode


class Jewels_StonesTest: XCTestCase {

    let test = JewelsStones()
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample1() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let J = "aA"
        let S = "aAAbbbb"
        
        let result = test.numJewelsInStones(J, S)
        XCTAssertEqual(result, 3)
    }

    
    func testExample2() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let J = "z"
        let S = "ZZ"
        
        let result = test.numJewelsInStones(J, S)
        XCTAssertEqual(result, 0)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
