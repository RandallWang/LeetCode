//
//  LinkedListIsPalindrome.swift
//  LeetCode
//
//  Created by Tianchi Wang on 2018/12/31.
//  Copyright © 2018 Tianchi Wang. All rights reserved.
//

import Foundation


class LinkedListIsPalindrome {
    func isPalindrome(_ head: ListNode?) -> Bool {
        if head == nil || head?.next == nil{
            return true
        }
        
        if head?.next?.next == nil {
            return head?.next?.val == head?.val
        }
        
        var mid: ListNode? = head
        var last: ListNode? = head
        
        while last?.next != nil {
            if last?.next?.next != nil {
                mid = mid?.next
                last = last?.next?.next
            }else {
                last = last?.next
            }
        }
        
        var l2 = reverseLinkedNode(mid?.next)
        var head = head
        
        while l2 != nil {
            if l2?.val != head?.val {
                return false
            }else {
                head = head?.next
                l2 = l2?.next
            }
        }
        
        return true
    }
    
    func reverseLinkedNode(_ head: ListNode?) -> ListNode? {
        var prev: ListNode? = nil
        var curr: ListNode? = head
        
        while curr != nil {
            let temp = curr?.next
            curr?.next = prev
            prev = curr
            curr = temp
        }
        return prev
    }
}
