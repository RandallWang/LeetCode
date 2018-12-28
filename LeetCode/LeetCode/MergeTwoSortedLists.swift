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
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        guard let unnilL1 = l1, let unnilL2 = l2 else {
            if l1 != nil {
                return l1
            }else {
                return l2
            }
        }

        var result: ListNode
        var nextL1: ListNode?
        var nextL2: ListNode?

        if unnilL1.val < unnilL2.val {
            result = ListNode.init(unnilL1.val)
            nextL1 = unnilL1.next
            nextL2 = unnilL2
        }else {
            result = ListNode.init(unnilL2.val)
            nextL1 = unnilL1
            nextL2 = unnilL2.next
        }


        while nextL1 != nil && nextL2 != nil{
            if nextL1!.val < nextL2!.val {
                result.append(nextL1!.val)
                nextL1 = nextL1!.next
            }else {
                result.append(nextL2!.val)
                nextL2 = nextL2!.next
            }
        }

        while nextL1 != nil {
            result.append(nextL1!.val)
            nextL1 = nextL1?.next
        }

        while nextL2 != nil {
            result.append(nextL2!.val)
            nextL2 = nextL2?.next
        }

        return result
    }
    
}
