//
//  ConvertBSTtoGreaterTreeTest.swift
//  LeetCodeTests
//
//  Created by Tianchi Wang on 2019/1/18.
//  Copyright © 2019 Tianchi Wang. All rights reserved.
//

import XCTest
@testable import LeetCode

class ConvertBSTtoGreaterTreeTest: XCTestCase {
    
    let test = ConvertBSTtoGreaterTree()

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample1() {
        let treeNode:TreeNode<Int> = TreeNode.init([5,2,13])
        let target:TreeNode<Int> = TreeNode.init([18,20,13])
        
        let result = test.convertBST(treeNode)
        
        XCTAssertEqual(result, target)
    }

    func testExample2() {
        let treeNode:TreeNode<Int> = TreeNode.init([2,0,3,-4,1])
        let target:TreeNode<Int> = TreeNode.init([5,6,3,2,6])
        
        let result = test.convertBST(treeNode)
        
        XCTAssertEqual(result, target)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
