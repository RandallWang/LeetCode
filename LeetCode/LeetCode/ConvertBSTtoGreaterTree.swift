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
    private var sum: Int = 0
    
    func convertBST(_ root: TreeNode<Int>?) -> TreeNode<Int>? {
        if let root = root{
            _ = convertBST(root.right)
            sum += root.val
            
            root.val = sum
            _ = convertBST(root.left)
        }

        return root
    }
}
