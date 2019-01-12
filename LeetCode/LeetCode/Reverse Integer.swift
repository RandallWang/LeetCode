//
//  Reverse Integer.swift
//  LeetCode
//
//  Created by Tianchi Wang on 2019/1/11.
//  Copyright © 2019 Tianchi Wang. All rights reserved.
//

import Foundation

/*
 Given a 32-bit signed integer, reverse digits of an integer.
 
 Example 1:
 
 Input: 123
 Output: 321
 
 Example 2:
 
 Input: -123
 Output: -321
 
 Example 3:
 
 Input: 120
 Output: 21


 Note:
 Assume we are dealing with an environment which could only store integers within the 32-bit signed integer range: [−231,  231 − 1]. For the purpose of this problem, assume that your function returns 0 when the reversed integer overflows.
 
 */



class ReverseInteger {
    func reverse(_ x: Int) -> Int {
        let queue:Queue<Int> = Queue()
        let isPositive = x > 0 ? 1 : -1
        
        var x = abs(x)
        
        while x >= 1 {
            queue.enQueue(item: x%10)
            x = x / 10
        }
        var reversedX = 0
        while !queue.isEmpty(){
            reversedX = 10 * reversedX + queue.deQueue()!
        }
        if reversedX > Int32.max {
            return 0
        }
        return reversedX * isPositive
    }
}
