//
//  Leaf-Similar Trees.swift
//  LeetCode
//
//  Created by Tianchi Wang on 2018/12/24.
//  Copyright © 2018 Tianchi Wang. All rights reserved.
//

import Foundation
/**
     Consider all the leaves of a binary tree.  From left to right order, the values of those leaves form a leaf value sequence.
 
     3
    | \
    5  1
   /|  |\
  6 2  9 8
    |\
    7 4
     For example, in the given tree above, the leaf value sequence is (6, 7, 4, 9, 8).
 
     Two binary trees are considered leaf-similar if their leaf value sequence is the same.
 
     Return true if and only if the two given trees with head nodes root1 and root2 are leaf-similar.
 
 
 
     Note:
 
     Both of the given trees will have between 1 and 100 nodes.
*/

class LeafSimilarTrees {
    func leafSimilar(_ root1: TreeNode<Int>?, _ root2: TreeNode<Int>?) -> Bool {
        guard let root1 = root1, let root2 = root2 else{
            return false
        }
        var sequence1:[Int] = []
        var sequence2:[Int] = []
        
        self.preOrderTraverse(root: root1, sequence: &sequence1)
        self.preOrderTraverse(root: root2, sequence: &sequence2)
        
        return sequence1 == sequence2
    }
    
    private func preOrderTraverse(root: TreeNode<Int>?, sequence:inout[Int] ) {
        guard let root = root else{
            return
        }
        
        if isLeafNode(node: root) {
            sequence.append(root.val)
        }
        
        preOrderTraverse(root: root.left, sequence:&sequence)
        preOrderTraverse(root: root.right, sequence:&sequence)
    }
    
    private func isLeafNode(node: TreeNode<Int>) -> Bool{
        return node.left == nil && node.right == nil
    }

}

