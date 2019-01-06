//
//  findUnsortedSubarray.swift
//  LeetCode
//
//  Created by Tianchi Wang on 2019/1/3.
//  Copyright © 2019 Tianchi Wang. All rights reserved.
//

import Foundation
/**
 Given an integer array, you need to find one continuous subarray that if you only sort this subarray in ascending order, then the whole array will be sorted in ascending order, too.
 
 You need to find the shortest such subarray and output its length.
 
 Example 1:
 Input: [2, 6, 4, 8, 10, 9, 15]
 Output: 5
 Explanation: You need to sort [6, 4, 8, 10, 9] in ascending order to make the whole array sorted in ascending order.
 Note:
 Then length of the input array is in range [1, 10,000].
 The input array may contain duplicates, so ascending order here means <=.
 */


class FindUnsortedSubarray {
    func findUnsortedSubarray(_ nums: [Int]) -> Int {
        var l: Int = nums.count
        var r: Int = 0
        
        let stack: Stack<Int> = Stack()
        for (index, num) in nums.enumerated() {
            while !stack.isEmpty() && num < nums[stack.peak()!]{
                l = min(l, stack.pop()!)
            }
            stack.push(index)
        }
        
        stack.clear()
        
        for index in (0 ..< nums.count).reversed(){
            while !stack.isEmpty() && nums[index] > nums[stack.peak()!]{
                r = max(r, stack.pop()!)
            }
            stack.push(index)
        }
        return (r - l) > 0 ? r - l + 1 : 0
    }
}
