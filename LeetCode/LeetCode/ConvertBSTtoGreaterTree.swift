//
//  ConvertBSTtoGreaterTree.swift
//  LeetCode
//
//  Created by Tianchi Wang on 2019/1/18.
//  Copyright © 2019 Tianchi Wang. All rights reserved.
//

import Foundation


/*
 Given a Binary Search Tree (BST), convert it to a Greater Tree such that every key of the original BST is changed to the original key plus sum of all keys greater than the original key in BST.
 
 Example:
 
 Input: The root of a Binary Search Tree like this:
   5
 /   \
2     13
 
 Output: The root of a Greater Tree like this:
    18
  /   \
20     13

 */

class ConvertBSTtoGreaterTree {
    func convertBST(_ root: TreeNode<Int>?) -> TreeNode<Int>? {
        guard let root = root else { return nil }
        
        guard let left = root.left,let right = root.right else {
            let nodeZero = TreeNode.init(0)
            root.left?.val = root.val + (root.left ?? nodeZero).val + (root.right ?? nodeZero).val
            root.val = root.val + (root.right ?? nodeZero).val
            return root
        }
        
        if left.left != nil || left.right != nil {
            root.left = convertBST(root.left)
        }
        
        if right.left != nil || right.right != nil {
            root.right = convertBST(root.right)
        }
        
        left.val = root.val + left.val + right.val
        root.val = root.val + right.val

        return root
    }
}
