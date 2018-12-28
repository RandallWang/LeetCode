//
//  InvertTreeTest.swift
//  LeetCodeTests
//
//  Created by Tianchi Wang on 2018/12/28.
//  Copyright © 2018 Tianchi Wang. All rights reserved.
//

import XCTest
@testable import LeetCode

class InvertTreeTest: XCTestCase {

    let test = invertTree()
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let inputTree = TreeNode.init(4)
        inputTree.left = TreeNode.init(2)
        inputTree.right = TreeNode.init(7)
        inputTree.left?.left = TreeNode.init(1)
        inputTree.left?.right = TreeNode.init(3)
        inputTree.right?.left = TreeNode.init(6)
        inputTree.right?.right = TreeNode.init(9)

        let outputTree = TreeNode.init(4)
        outputTree.left = TreeNode.init(7)
        outputTree.right = TreeNode.init(2)
        outputTree.left?.left = TreeNode.init(9)
        outputTree.left?.right = TreeNode.init(6)
        outputTree.right?.left = TreeNode.init(3)
        outputTree.right?.right = TreeNode.init(1)

        let resultTree = test.invertTree(inputTree)
        XCTAssertEqual(resultTree, outputTree)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
