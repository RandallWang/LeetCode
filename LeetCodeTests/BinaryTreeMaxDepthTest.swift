//
//  BinaryTreeMaxDepthTest.swift
//  LeetCodeTests
//
//  Created by Tianchi Wang on 2019/1/28.
//  Copyright © 2019 Tianchi Wang. All rights reserved.
//

import XCTest
@testable import LeetCode


class BinaryTreeMaxDepthTest: XCTestCase {

    let test = BinaryTreeMaxDepth()
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let tree:TreeNode<Int> = TreeNode.init([3,9,20,nil,nil,15,7])
        let depth = test.DFS_MaxDepth(tree)
        
        XCTAssertEqual(depth, 3)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
