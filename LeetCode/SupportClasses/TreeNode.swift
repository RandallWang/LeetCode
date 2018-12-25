//
//  TreeNode.swift
//  LeetCode
//
//  Created by Tianchi Wang on 2018/12/24.
//  Copyright © 2018 Tianchi Wang. All rights reserved.
//

import Foundation

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
    
    func preOrderTraverse(root: TreeNode?) {
        guard let root = root else{
            return
        }

        print("\(root.val)")
        preOrderTraverse(root: root.left)
        preOrderTraverse(root: root.right)
    }
    
    
    func inOrderTraverse(root: TreeNode?) {
        guard let root = root else{
            return
        }
        
        inOrderTraverse(root: root.left)
        print("\(root.val)")
        inOrderTraverse(root: root.right)
    }
    
    func postOrderTraverse(root: TreeNode?) {
        guard let root = root else{
            return
        }
        
        postOrderTraverse(root: root.left)
        postOrderTraverse(root: root.right)
        print("\(root.val)")
    }
    


}
