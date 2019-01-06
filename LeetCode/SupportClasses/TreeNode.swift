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
    func recursive_PreOrderTraverse(root: TreeNode?) {
        guard let root = root else{
            return
        }

        print("\(root.val)")
        recursive_PreOrderTraverse(root: root.left)
        recursive_PreOrderTraverse(root: root.right)
    }
    
    
    func recursive_InOrderTraverse(root: TreeNode?) {
        guard let root = root else{
            return
        }
        
        recursive_InOrderTraverse(root: root.left)
        print("\(root.val)")
        recursive_InOrderTraverse(root: root.right)
    }
    
    
    func recursive_PostOrderTraverse(root: TreeNode?) {
        guard let root = root else{
            return
        }
        
        recursive_PostOrderTraverse(root: root.left)
        recursive_PostOrderTraverse(root: root.right)
        print("\(root.val)")
    }

//MARK: - DFS iterative
    func iterative_PreOrderTraverse(root: TreeNode?) {
        var result:[T] = []
        
        let stack: Stack<TreeNode> = Stack()
        var node: TreeNode<T>? = root
        
        while node != nil || !stack.isEmpty() {
            while node != nil {
                result.append(node!.val)
                stack.push(node!)
                node = node?.left
            }
            
            if !stack.isEmpty() {
                node = stack.pop()
                node = node?.right
            }
        }
        
        print("iterative_PreOrderTraverse:\(result)")
    }

    func iterative_InOrderTraverse(root: TreeNode?) {
        var result:[T] = []
        
        let stack: Stack<TreeNode> = Stack()
        var node: TreeNode<T>? = root

        while node != nil || !stack.isEmpty() {
            while node != nil {
                stack.push(node!)
                node = node?.left
            }
            
            if !stack.isEmpty() {
                node = stack.pop()
                result.append(node!.val)
                node = node?.right
            }
        }
        
        print("iterative_InOrderTraverse:\(result)")
    }

    func iterative_PostOrderTraverse(root: TreeNode?) {
        var result:[T] = []
        
        let stack: Stack<TreeNode> = Stack()
        var node: TreeNode<T>? = root
        var lastVisited: TreeNode? = root
        
        while node != nil || !stack.isEmpty() {
            while node != nil {
                stack.push(node!)
                node = node?.left
            }
            if !stack.isEmpty() {       //this node has no left node
                let temp = stack.peak()!
                if temp.right != nil && lastVisited != temp.right{
                    node = temp.right
                }else {                 //this node has no leaf node
                    _ = stack.pop()
                    result.append(temp.val)
                    lastVisited = temp
                }
            }
        }
        
        print("iterative_PostOrderTraverse:\(result)")
    }


//MARK: - BFS
    func breadthFirstSearch(root: TreeNode?) {
        
//        while <#condition#> {
//            
//        }
    }

    func iterative_breadthFirstSearch(root: TreeNode?) {
        let queue: Queue<T> = Queue.init()
//        queue.enQueue(item: root?.val)
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

extension TreeNode: CustomStringConvertible {
    public var description: String {
        let des = "\(val)\n          / \\   \n\(String(describing: left?.val)) \(String(describing: right?.val))"
        return des
    }
}
