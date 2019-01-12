//
//  Queue.swift
//  LeetCode
//
//  Created by Tianchi Wang on 2019/1/5.
//  Copyright © 2019 Tianchi Wang. All rights reserved.
//

import Foundation


class Queue<T: Equatable> {
    typealias LNode = ListNode<T>
    private var head: LNode?
    private var rear: LNode?
    private var count = 0

    init() {
        head = nil
        rear = nil
    }
    
    func enQueue(item:T) {
        let node = ListNode.init(item)
        count += 1
        if head == nil {
            head = node
            rear = node
        }else {
            rear?.next = node
            rear = rear?.next
        }
    }
    
    func deQueue() -> T? {
        if let temp = head {
            head = temp.next
            count -= 1
            return temp.val
        }else {
            return nil
        }
    }
    
    func length() -> Int {
        return count
    }
    
    func isEmpty() -> Bool {
        if head == nil{
            return true
        }
        return false
    }
    
    func getHead() -> T? {
        return head?.val
    }
}

extension Queue: CustomStringConvertible {
    public var description: String {
        var linkedListDes = "\(String(describing: head?.val))"
        
        var temp: ListNode? = self.head
        
        while let next = temp?.next {
            linkedListDes.append(" - \(next.val)")
            temp = next
        }
        
        return "<\(type(of: self)): \(linkedListDes)>"
    }
}
