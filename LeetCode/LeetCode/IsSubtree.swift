//
//  IsSubtree.swift
//  LeetCode
//
//  Created by Tianchi Wang on 2018/12/26.
//  Copyright © 2018 Tianchi Wang. All rights reserved.
//

import Foundation
/**
 Given two non-empty binary trees s and t, check whether tree t has exactly the same structure and node values with a subtree of s. A subtree of s is a tree consists of a node in s and all of this node's descendants. The tree s could also be considered as a subtree of itself.
 
 Example 1:
 Given tree s:
 
        3
       / \
      4   5
     / \
    1   2
 Given tree t:
      4
     / \
    1   2
 Return true, because t has the same structure and node values with a subtree of s.
 
 Example 2:
 Given tree s:
 
         3
        / \
       4   5
      / \
     1   2
    /
   0
 Given tree t:
      4
     / \
    1   2
 Return false.
 */


class IsSubtree {
    func isSubtree(_ s: TreeNode?, _ t: TreeNode?) -> Bool {
        guard let s = s else {
            return false;
        }
        
        if isSameTree(s, t){
            return true
        }else {
            return isSubtree(s.right, t) || isSubtree(s.left, t)
        }
    }
    
    private func isSameTree(_ s: TreeNode?, _ t: TreeNode?) -> Bool {
        if s == nil && t == nil {
            return true
        }
        
        guard let s = s, let t = t else{
            return false
        }
        
        if s.val == t.val {
            return isSameTree(s.left, t.left) && isSameTree(s.right, t.right)
        }else {
            return false
        }
    }
}
