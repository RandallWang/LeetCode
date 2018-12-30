//
//  ListNode.swift
//  LeetCode
//
//  Created by Tianchi Wang on 2018/12/27.
//  Copyright © 2018 Tianchi Wang. All rights reserved.
//

import Foundation

public class ListNode{
    public var val: Int
    public var next: ListNode?
    
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
    
    public func append(_ nodeValue: Int) {
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
        var linkedList = "\(self.val)"
        
        var temp: ListNode? = self
        
        while let next = temp?.next {
            linkedList.append(" -> \(next.val)")
            temp = next
        }
        
        return "<\(type(of: self)): \(linkedList)>"
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
