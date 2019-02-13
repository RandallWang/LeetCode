//
//  DiameterBinaryTreeTest.swift
//  LeetCodeTests
//
//  Created by Tianchi Wang on 2019/2/1.
//  Copyright © 2019 Tianchi Wang. All rights reserved.
//

import XCTest
@testable import LeetCode

class DiameterBinaryTreeTest: XCTestCase {

    let test = DiameterBinaryTree()

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample1() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let treeNode:TreeNode<Int> = TreeNode.init([1,2,3,4,5])
        
        let result = test.diameterOfBinaryTree(treeNode)
        
        XCTAssertEqual(result, 3)
    }
    
    func testExample2() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let treeNode:TreeNode<Int> = TreeNode.init([1,2,3])
        
        let result = test.diameterOfBinaryTree(treeNode)
        
        XCTAssertEqual(result, 2)
    }


    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
