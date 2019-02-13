//
//  Diameter of Binary Tree.swift
//  LeetCode
//
//  Created by Tianchi Wang on 2019/2/1.
//  Copyright © 2019 Tianchi Wang. All rights reserved.
//

import Foundation

/*
 Given a binary tree, you need to compute the length of the diameter of the tree. The diameter of a binary tree is the length of the longest path between any two nodes in a tree. This path may or may not pass through the root.
 
 Example:
 Given a binary tree
      1
     / \
    2   3
   / \
  4   5
 Return 3, which is the length of the path [4,2,1,3] or [5,2,1,3].
 
 Note: The length of path between two nodes is represented by the number of edges between them.
 */
class DiameterBinaryTree {
    var ans = 0
    
    func diameterOfBinaryTree(_ root: TreeNode<Int>?) -> Int {
        ans = 1
        
        _ = depth(node: root)
        
        return ans - 1
    }
    
    private func depth(node: TreeNode<Int>?) -> Int {
        guard let node = node else { return 0 }

        let l = depth(node: node.left)
        let r = depth(node: node.right)
        
        ans = max(ans, l + r + 1)
        return max(l, r) + 1
    }
}
