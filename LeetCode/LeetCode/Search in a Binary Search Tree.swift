//
//  Search in a Binary Search Tree.swift
//  LeetCode
//
//  Created by Tianchi Wang on 2018/12/26.
//  Copyright © 2018 Tianchi Wang. All rights reserved.
//

import Foundation
/**
 Given the root node of a binary search tree (BST) and a value. You need to find the node in the BST that the node's value equals the given value. Return the subtree rooted with that node. If such node doesn't exist, you should return NULL.
 
 For example,
 
 Given the tree:
  4
 / \
 2  7
/ \
1  3
 
 And the value to search: 2
 You should return this subtree:
 
  2
 / \
1   3
 In the example above, if we want to search the value 5, since there is no node with value 5, we should return NULL.
 
 Note that an empty tree is represented by NULL, therefore you would see the expected output (serialized tree format) as [], not null.
 
 */


class searchBST {
    class func searchBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
        guard let root = root else {
            return nil
        }
        
        if root.val > val {
            return searchBST(root.left, val)
        }else if root.val < val {
            return searchBST(root.right, val)
        }else {
            return root
        }
    }
}
