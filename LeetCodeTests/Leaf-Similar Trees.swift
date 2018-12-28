//
//  Leaf-Similar Trees.swift
//  LeetCodeTests
//
//  Created by Tianchi Wang on 2018/12/24.
//  Copyright © 2018 Tianchi Wang. All rights reserved.
//

import XCTest
@testable import LeetCode

class Leaf_Similar_Trees: XCTestCase {
    
    let obj:LeafSimilarTrees = LeafSimilarTrees()
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {

        let root = TreeNode.init(3)
        root.left = TreeNode.init(5)
        root.right = TreeNode.init(1)
        root.left?.left = TreeNode.init(6)
        root.left?.right = TreeNode.init(2)
        root.left?.right?.left = TreeNode.init(7)
        root.left?.right?.right = TreeNode.init(4)
        root.right?.left = TreeNode.init(9)
        root.right?.right = TreeNode.init(8)

        let testNode = TreeNode.init(3)
        testNode.left = TreeNode.init(5)
        testNode.right = TreeNode.init(1)
        testNode.left?.left = TreeNode.init(6)
        testNode.left?.right = TreeNode.init(7)
        testNode.right?.left = TreeNode.init(4)
        testNode.right?.right = TreeNode.init(2)
        testNode.right?.right?.left = TreeNode.init(9)
        testNode.right?.right?.right = TreeNode.init(8)
        
        let result = obj.leafSimilar(root, testNode)
        
        XCTAssertTrue(result)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
