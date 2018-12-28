//
//  searchBSTTest.swift
//  LeetCodeTests
//
//  Created by Tianchi Wang on 2018/12/26.
//  Copyright © 2018 Tianchi Wang. All rights reserved.
//

import XCTest
@testable import LeetCode

class searchBSTTest: XCTestCase {

    let test:searchBST = searchBST()
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let root:TreeNode = TreeNode.init(4)
        root.left = TreeNode.init(2)
        root.right = TreeNode.init(7)
        root.left?.left = TreeNode.init(1)
        root.left?.right = TreeNode.init(3)
        
        let target:TreeNode = TreeNode.init(2)
        target.left = TreeNode.init(1)
        target.right = TreeNode.init(3)
        
        let result = test.searchBST(root, 2)
        
        XCTAssertEqual(result, target)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
