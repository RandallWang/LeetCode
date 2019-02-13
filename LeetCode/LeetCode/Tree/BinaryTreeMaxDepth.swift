//
//  BinaryTreeMaxDepth.swift
//  LeetCode
//
//  Created by Tianchi Wang on 2019/1/28.
//  Copyright © 2019 Tianchi Wang. All rights reserved.
//

import Foundation


/*
 Given a binary tree, find its maximum depth.
 
 The maximum depth is the number of nodes along the longest path from the root node down to the farthest leaf node.
 
 Note: A leaf is a node with no children.
 
 Example:
 
 Given binary tree [3,9,20,null,null,15,7],
 
        3
       / \
      9  20
    /  \
   15   7
 
 return its depth = 3.
 
 */

class BinaryTreeMaxDepth {
    
    //DFS
    func DFS_MaxDepth(_ root: TreeNode<Int>?) -> Int {
        guard let root = root else {
            return 0
        }
        let stack = Stack<TreeNode<Int>>()
        let depthStack = Stack<Int>()
        stack.push(root)
        depthStack.push(1)

        var depth = 1
        
        while !stack.isEmpty() {
            let currentDepth = depthStack.pop()!
            let node = stack.pop()!
            
            depth = max(currentDepth, depth)
            
            if let left = node.left {
                depthStack.push(currentDepth + 1)
                stack.push(left)
            }
            
            if let right = node.right {
                depthStack.push(currentDepth + 1)
                stack.push(right)
            }
        }
        
        return depth
    }
    
    func Recursion_MaxDepth(_ root: TreeNode<Int>?) -> Int {
        guard let root = root else { return 0 }
        
        let rightDepth = Recursion_MaxDepth(root.right)
        let leftDepth = Recursion_MaxDepth(root.left)
        
        return max(rightDepth, leftDepth) + 1
    }
    
}
