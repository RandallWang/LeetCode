//
//  LinkedList.swift
//  LeetCode
//
//  Created by Tianchi Wang on 2019/1/8.
//  Copyright © 2019 Tianchi Wang. All rights reserved.
//

import Foundation

/**
 Design your implementation of the linked list. You can choose to use the singly linked list or the doubly linked list. A node in a singly linked list should have two attributes: val and next. val is the value of the current node, and next is a pointer/reference to the next node. If you want to use the doubly linked list, you will need one more attribute prev to indicate the previous node in the linked list. Assume all nodes in the linked list are 0-indexed.
 
 Implement these functions in your linked list class:
 
 get(index) : Get the value of the index-th node in the linked list. If the index is invalid, return -1.
 addAtHead(val) : Add a node of value val before the first element of the linked list. After the insertion, the new node will be the first node of the linked list.
 addAtTail(val) : Append a node of value val to the last element of the linked list.
 addAtIndex(index, val) : Add a node of value val before the index-th node in the linked list. If index equals to the length of linked list, the node will be appended to the end of linked list. If index is greater than the length, the node will not be inserted.
 deleteAtIndex(index) : Delete the index-th node in the linked list, if the index is valid.
 Example:
 
 MyLinkedList linkedList = new MyLinkedList();
 linkedList.addAtHead(1);
 linkedList.addAtTail(3);
 linkedList.addAtIndex(1, 2);  // linked list becomes 1->2->3
 linkedList.get(1);            // returns 2
 linkedList.deleteAtIndex(1);  // now the linked list is 1->3
 linkedList.get(1);            // returns 3
 Note:
 
 All values will be in the range of [1, 1000].
 The number of operations will be in the range of [1, 1000].
 Please do not use the built-in LinkedList library.

 */

class MyLinkedList {
    var head: ListNode<Int>?
    var tail: ListNode<Int>?
    /** Initialize your data structure here. */
    init() {
        head = nil
        tail = nil
    }
    
    /** Get the value of the index-th node in the linked list. If the index is invalid, return -1. */
    func get(_ index: Int) -> Int {
        var count = 0
        var node = head
        while node != nil  {
            if index == count {
                return (node?.val)!
            }else {
                node = node?.next
                count += 1
            }
        }
        
        return -1
    }
    
    /** Add a node of value val before the first element of the linked list. After the insertion, the new node will be the first node of the linked list. */
    func addAtHead(_ val: Int) {
        let newNode = ListNode.init(val)
        if head == nil {
            head = newNode
            tail = newNode
        }else {
            newNode.next = head
            head = newNode
        }
    }
    
    /** Append a node of value val to the last element of the linked list. */
    func addAtTail(_ val: Int) {
        let newNode = ListNode.init(val)
        if tail == nil {
            head = newNode
            tail = newNode
        }else {
            tail?.next = newNode
            tail = tail?.next
        }
    }
    
    /** Add a node of value val before the index-th node in the linked list. If index equals to the length of linked list, the node will be appended to the end of linked list. If index is greater than the length, the node will not be inserted. */
    func addAtIndex(_ index: Int, _ val: Int) {
        if head == nil {
            if index == 0 {
                let newNode = ListNode.init(val)
                
                head = newNode
                tail = newNode
            }else {
                return
            }
        }
        
        var count = 0
        var node = head
        var prev: ListNode<Int>? = nil
        
        while prev != nil || node != nil{
            if index == count {
                let newNode = ListNode.init(val)

                prev?.next = newNode
                newNode.next = node
                
                if node == nil {//reach the end
                    tail = newNode
                }

                break
            }else {
                prev = node
                node = node?.next
                count += 1
            }
        }
        assert(tail?.next == nil)
    }
    
    /** Delete the index-th node in the linked list, if the index is valid. */
    func deleteAtIndex(_ index: Int) {
        var count = 0
        var node = head
        var prev: ListNode<Int>? = nil

        while node != nil  {
            if index == count {
                prev?.next = node?.next
                if prev?.next == nil {//reach the end
                    tail = prev
                }
                break
            }else {
                prev = node
                node = node?.next
                count += 1
            }
        }
    }
}


extension MyLinkedList: CustomStringConvertible {
    public var description: String {
        guard let head = head else { return "list is empty" }
        var linkedListDes = "\(head.val)"
        
        var temp: ListNode? = self.head
        
        while let next = temp?.next {
            linkedListDes.append(" -> \(next.val)")
            temp = next
        }
        
        return "\(type(of: self)): \(linkedListDes)"
    }
    
}
