//
//  ListNode.swift
//  LeetCode
//
//  Created by Tianchi Wang on 2018/12/27.
//  Copyright © 2018 Tianchi Wang. All rights reserved.
//

import Foundation

public class ListNode<T: Equatable>{
    public var val: T
    public var next: ListNode?
    
    public init(_ val: T) {
        self.val = val
    }
    
    public func append(_ nodeValue: T) {
        guard let nextNode = self.next else {
            self.next = ListNode(nodeValue)
            return
        }
        var lastNode: ListNode? = nextNode
        
        while lastNode?.next != nil{
            lastNode = lastNode?.next
        }
        lastNode?.next = ListNode(nodeValue)
    }
}

public class TwoWayListNode<T> {
    private (set) var val: T
    private (set) var next: TwoWayListNode?
    private (set) weak var previous: TwoWayListNode?
    
    public init(val: T) {
        self.val = val
    }
    
    public init(values: [T]) {
        guard !values.isEmpty else { fatalError("TwoWayListNode ERROR: Values is Empty!") }
        self.val = values.first!
        
        var temp: TwoWayListNode? = self
        for index in 1 ..< values.count {
            temp?.append(node: TwoWayListNode(val: values[index]))
            temp = temp?.next
        }
    }
    
    public func append(node: TwoWayListNode) {
        guard let nextNode = next else {
            self.next = node
            node.previous = self
            return
        }
        var lastNode: TwoWayListNode? = nextNode
        
        while lastNode?.next != nil{
            lastNode = lastNode?.next
        }
        
        lastNode?.next = node
        node.previous = lastNode
    }
    
    public func append(_ value: T) {
        guard let nextNode = next else {
            let node = TwoWayListNode(val: value)
            self.next = node
            node.previous = self
            return
        }
        var lastNode: TwoWayListNode? = nextNode
        
        while lastNode?.next != nil{
            lastNode = lastNode?.next
        }
        
        let node = TwoWayListNode(val: value)

        lastNode?.next = node
        node.previous = lastNode
    }
}

extension TwoWayListNode: CustomStringConvertible {
    public var description: String {
        var linkedListDes = "\(self.val)"
        
        var temp: TwoWayListNode = self
        
        while let next = temp.next {
            linkedListDes.append(" -> \(next.val)")
            temp = next
        }
        linkedListDes += "\n"
        
        linkedListDes += "\(temp.val)"
        
        while let previous = temp.previous {
            linkedListDes.append(" -> \(previous.val)")
            temp = previous
        }
        
        return "\(type(of: self)): \n\(linkedListDes)"
    }
}

extension ListNode: CustomStringConvertible {
    public var description: String {
        var linkedListDes = "\(self.val)"
        
        var temp: ListNode? = self
        
        while let next = temp?.next {
            linkedListDes.append(" -> \(next.val)")
            temp = next
        }
        
        return "\(type(of: self)): \(linkedListDes)"
    }
}

extension ListNode: Equatable {
    public static func == (lhs: ListNode, rhs: ListNode) -> Bool {
        if lhs.val == rhs.val {
            return lhs.next == rhs.next
        }else {
            return false
        }
    }
}
