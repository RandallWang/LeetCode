//
//  TreeNode.swift
//  LeetCode
//
//  Created by Tianchi Wang on 2018/12/24.
//  Copyright © 2018 Tianchi Wang. All rights reserved.
//

import Foundation

public class TreeNode<T:Equatable> {
    public var val: T
    public var left: TreeNode?
    public var right: TreeNode?
    
    public init(_ val: T) {
        self.val = val
        self.left = nil
        self.right = nil
    }
    
    func height() -> Int {
        return 0
    }
    
//MARK: - DFS recursive
    func DFS_PreOrderTraverse(root: TreeNode?) {
        guard let root = root else{
            return
        }

        print("\(root.val)")
        DFS_PreOrderTraverse(root: root.left)
        DFS_PreOrderTraverse(root: root.right)
    }
    
    
    func DFS_InOrderTraverse(root: TreeNode?) {
        guard let root = root else{
            return
        }
        
        DFS_InOrderTraverse(root: root.left)
        print("\(root.val)")
        DFS_InOrderTraverse(root: root.right)
    }
    
    
    func DFS_PostOrderTraverse(root: TreeNode?) {
        guard let root = root else{
            return
        }
        
        DFS_PostOrderTraverse(root: root.left)
        DFS_PostOrderTraverse(root: root.right)
        print("\(root.val)")
    }

//MARK: - DFS iterative
//    func (root: TreeNode?) {
//
//    }
//
//    func (root: TreeNode?) {
//
//    }
//
//    func (root: TreeNode?) {
//
//    }


//MARK: - BFS
    func breadthFirstSearch(root: TreeNode?) {
        
//        while <#condition#> {
//            
//        }
    }

    func iterative_breadthFirstSearch(root: TreeNode?) {
        let queue: Queue<T> = Queue.init()
        
    }
    
}

extension TreeNode: Equatable {
    public static func == (lhs: TreeNode, rhs: TreeNode) -> Bool {
        if lhs.val == rhs.val {
            return lhs.right == rhs.right && lhs.left == rhs.left
        }else {
            return false
        }
    }


}
