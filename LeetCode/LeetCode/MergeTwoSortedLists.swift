//
//  MergeTwoSortedLists.swift
//  LeetCode
//
//  Created by Tianchi Wang on 2018/12/27.
//  Copyright © 2018 Tianchi Wang. All rights reserved.
//

import Foundation
/**
 Merge two sorted linked lists and return it as a new list. The new list should be made by splicing together the nodes of the first two lists.
 
 Example:
 
 Input: 1->2->4, 1->3->4
 Output: 1->1->2->3->4->4
 */

class mergeTwoLists {

    func recursive_mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        if let l1 = l1, let l2 = l2{
            if l1.val < l2.val {
                let next = recursive_mergeTwoLists(l1.next, l2)
                l1.next = next
                return l1
            }else {
                let next = recursive_mergeTwoLists(l1, l2.next)
                l2.next = next
                return l2
            }
        }
        return l1 ?? l2
    }
    
    func iterative_mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        let result: ListNode = ListNode.init(0)
        var temp: ListNode = result
        
        var l1 = l1
        var l2 = l2
        
        while l1 != nil && l2 != nil{
            if l1!.val < l2!.val {
                temp.next = l1
                l1 = l1!.next
            }else {
                temp.next = l2
                l2 = l2!.next
            }
            temp = temp.next!
        }
        
        if (l1 == nil) {
            temp.next = l2
        }else {
            temp.next = l1
        }
        
        return result.next
    }
}
