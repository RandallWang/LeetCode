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
        self.next = nil
    }
    
    public func append(_ nodeValue: T) {
        guard let nextNode = self.next else {
            self.next = ListNode.init(nodeValue)
            return
        }
        var lastNode: ListNode? = nextNode
        
        while lastNode?.next != nil{
            lastNode = lastNode?.next
        }
        lastNode?.next = ListNode.init(nodeValue)
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
