//
//  ThirdMax.swift
//  LeetCode
//
//  Created by Tianchi Wang on 2019/1/6.
//  Copyright © 2019 Tianchi Wang. All rights reserved.
//

import Foundation
/**
Given a non-empty array of integers, return the third maximum number in this array. If it does not exist, return the maximum number. The time complexity must be in O(n).

Example 1:
Input: [3, 2, 1]

Output: 1

Explanation: The third maximum is 1.
Example 2:
Input: [1, 2]

Output: 2

Explanation: The third maximum does not exist, so the maximum (2) is returned instead.
Example 3:
Input: [2, 2, 3, 1]

Output: 1

Explanation: Note that the third maximum here means the third maximum distinct number.
Both numbers with value 2 are both considered as second maximum.
*/

class thirdMax {
    func thirdMax(_ nums: [Int]) -> Int {
        let heap = Heap.init(array: nums, sort: <)
        
        let temp = heap.peek()
        var max = temp
        var count = 1

        while count < 3 {
            if heap.isEmpty() {
                return temp!
            }
            if max == heap.peek(){
                _ = heap.delete(index: 1)
                continue
            }else {
                max = heap.delete(index: 1)
                count += 1
            }
        }
        return max!
    }
}
