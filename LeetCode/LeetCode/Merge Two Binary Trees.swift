//
//  Merge Two Binary Trees.swift
//  LeetCode
//
//  Created by Tianchi Wang on 2019/1/15.
//  Copyright © 2019 Tianchi Wang. All rights reserved.
//

import Foundation


/*
 Given two binary trees and imagine that when you put one of them to cover the other, some nodes of the two trees are overlapped while the others are not.
 
 You need to merge them into a new binary tree. The merge rule is that if two nodes overlap, then sum node values up as the new value of the merged node. Otherwise, the NOT null node will be used as the node of new tree.
 
 Example 1:
 
 Input:
 Tree 1                     Tree 2
    1                         2
   / \                       / \
  3   2                     1   3
 /                           \   \
5                             4   7
 Output:
 Merged tree:
     3
    / \
   4   5
  / \   \
 5   4   7
 
 
 Note: The merging process must start from the root nodes of both trees.
 
 */

class MergeTwoBinaryTrees {
    
    //Using Recursion
    func mergeTrees1(_ t1: TreeNode<Int>?, _ t2: TreeNode<Int>?) -> TreeNode<Int>? {
        guard let t1 = t1 else {
            return t2
        }
        
        guard let t2 = t2 else {
            return t1
        }
        
        t1.val += t2.val
        
        t1.left = mergeTrees1(t1.left, t2.left)
        t1.right = mergeTrees1(t1.right, t2.right)
        
        return t1
    }
    
    //Using Iterative
    func mergeTrees2(_ t1: TreeNode<Int>?, _ t2: TreeNode<Int>?) -> TreeNode<Int>? {
        if t1 == nil {
            return t2
        }
        let stack: Stack<[TreeNode<Int>?]> = Stack()
        stack.push([t1, t2])
        
        while !stack.isEmpty() {
            let t = stack.pop()!
            
            guard let ta = t[0], let tb = t[1] else{
                continue
            }
            
            ta.val += tb.val
            
            if ta.left == nil {
                ta.left = tb.left
            }else {
                stack.push([ta.left, tb.left])
            }
            
            if ta.right == nil {
                ta.right = tb.right
            }else {
                stack.push([ta.right, tb.right])
            }
        }
        
        return t1
    }
}


