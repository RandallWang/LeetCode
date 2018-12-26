//
//  invertTree.swift
//  LeetCode
//
//  Created by Tianchi Wang on 2018/12/26.
//  Copyright © 2018 Tianchi Wang. All rights reserved.
//

import Foundation
/**
 Invert a binary tree.
 
 Example:
 
 Input:
 
      4
    /   \
   2     7
  / \   / \
 1   3 6   9
 Output:
 
      4
    /   \
   7     2
  / \   / \
 9   6 3   1
 
 
 Trivia:
 This problem was inspired by this original tweet by Max Howell:
 
 Google: 90% of our engineers use the software you wrote (Homebrew), but you can’t invert a binary tree on a whiteboard so f*** off.

 */

class invertTree {
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        guard let root = root else {
            return nil;
        }
        
        let leftNode = invertTree(root.left)
        let rightNode = invertTree(root.right)
        
        root.left = rightNode
        root.right = leftNode

        return root
    }
}
