//
//  LinkedListDeleteDuplicates.swift
//  LeetCode
//
//  Created by Tianchi Wang on 2018/12/30.
//  Copyright © 2018 Tianchi Wang. All rights reserved.
//

import Foundation

/**
 Given a sorted linked list, delete all duplicates such that each element appear only once.
 
 Example 1:
 
 Input: 1->1->2
 Output: 1->2
 Example 2:
 
 Input: 1->1->2->3->3
 Output: 1->2->3
 */
class LinkedListDeleteDuplicates {
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        var current: ListNode? = head
        
        while current != nil && current?.next != nil{
            if current?.val == current?.next?.val {
                current?.next = current?.next?.next
            }else {
                current = current?.next
            }
        }
        
        return head
    }
}
