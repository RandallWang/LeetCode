//
//  IsSubtreeTest.swift
//  LeetCodeTests
//
//  Created by Tianchi Wang on 2018/12/26.
//  Copyright © 2018 Tianchi Wang. All rights reserved.
//

import XCTest
@testable import LeetCode

class IsSubtreeTest: XCTestCase {

    let test:IsSubtree = IsSubtree()
    
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample1() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let treeS = TreeNode.init(3)
        treeS.left = TreeNode.init(4)
        treeS.right = TreeNode.init(5)
        treeS.left?.left = TreeNode.init(1)
        treeS.left?.right = TreeNode.init(2)
        
        let treeT = TreeNode.init(4)
        treeT.left = TreeNode.init(1)
        treeT.right = TreeNode.init(2)

        XCTAssertTrue(test.isSubtree(treeS, treeT))
    }
    
    func testExample2() {
        let treeS = TreeNode.init(3)
        treeS.left = TreeNode.init(4)
        treeS.right = TreeNode.init(5)
        treeS.left?.left = TreeNode.init(1)
        treeS.left?.right = TreeNode.init(2)
        treeS.left?.right?.left = TreeNode.init(0)

        let treeT = TreeNode.init(4)
        treeT.left = TreeNode.init(1)
        treeT.right = TreeNode.init(2)
        
        XCTAssertFalse(test.isSubtree(treeS, treeT))
    }


    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
