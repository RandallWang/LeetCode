//
//  ReverseList.swift
//  LeetCode
//
//  Created by Tianchi Wang on 2018/12/27.
//  Copyright © 2018 Tianchi Wang. All rights reserved.
//

import Foundation

/**
Reverse a singly linked list.

Example:

Input: 1->2->3->4->5->NULL
Output: 5->4->3->2->1->NULL
Follow up:

A linked list can be reversed either iteratively or recursively. Could you implement both?

*/

class reverseList {
    func dull_reverseList(_ head: ListNode?) -> ListNode? {
        if head == nil {
            return nil
        }
        
        var tempNode:ListNode? = head
        
        var tempList:[Int] = []

        while tempNode != nil{
            tempList.append(tempNode!.val)
            tempNode = tempNode?.next
        }
        
        var newNode: ListNode? = nil
        var index = tempList.count
        var tailNode: ListNode? = nil
        
        while index > 0 {
            let val = tempList[index - 1]
            let node = ListNode.init(val)
            
            if newNode == nil {
                newNode = node
            }else {
                tailNode!.next = node
            }
            tailNode = node
            
            index -= 1
        }
        
        return newNode
    }
    
    func Iterative_reverseList(_ head: ListNode?) -> ListNode? {
        var prev: ListNode? = nil
        var curr: ListNode? = head
        
        while curr != nil {
            let nextTemp = curr?.next
            curr?.next = prev
            prev = curr
            curr = nextTemp
        }
        
        return prev
    }
    
    func Recursive_reverseList(_ head: ListNode?) -> ListNode? {
        if head?.next == nil || head == nil {
            return head
        }
        let p = Recursive_reverseList(head?.next)
        
        head?.next?.next = head
        head?.next = nil

        return p
    }
    
}
