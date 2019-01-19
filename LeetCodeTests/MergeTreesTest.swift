//
//  MergeTreesTest.swift
//  LeetCodeTests
//
//  Created by Tianchi Wang on 2019/1/18.
//  Copyright © 2019 Tianchi Wang. All rights reserved.
//

import XCTest
@testable import LeetCode


class MergeTreesTest: XCTestCase {

    let test = MergeTwoBinaryTrees()
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample1() {
        let tree1:TreeNode<Int> = TreeNode.init([1,3,2,5])
        let tree2:TreeNode<Int> = TreeNode.init([2,1,3,nil,4,nil,7])
        
        let result = test.mergeTrees1(tree1, tree2)
        
        let target:TreeNode<Int> = TreeNode.init([3,4,5,5,4,nil,7])
        XCTAssertEqual(result, target)
    }

    func testExample2() {
        let tree1:TreeNode<Int> = TreeNode.init([1,3,2,5])
        let tree2:TreeNode<Int> = TreeNode.init([2,1,3,nil,4,nil,7])
        
        let result = test.mergeTrees2(tree1, tree2)
        
        let target:TreeNode<Int> = TreeNode.init([3,4,5,5,4,nil,7])
        XCTAssertEqual(result, target)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
