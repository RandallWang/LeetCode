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
        if nums.count == 1 {
            return 0
        }
        
        var i = 0
        var j = nums.count - 1
        let max = nums.last!
        let min = nums.first!
        var n = 1
        
        while nums[j] >= nums[j-n] {
            if nums[j] == nums[j-n] {
                n += 1
            }else {
                n = 1
                j -= 1
            }
            
            if j == 0 || n == nums.count{
                return 0
            }else if j - n < 0 {
                break
            }else {
                if nums[j-n] > max {
                    j = nums.count - 1
                    break
                }
            }
        }
        
        if j - n >= 0 {
            let temp1 =  nums[j-n]
            
            while nums[j] < temp1{
                if j >= nums.count - 1 {
                    break
                }
                j += 1
            }
        }
        
        n = 1
        
        while nums[i] <= nums[i + n] {
            if nums[i] == nums[i + n] {
                n += 1
            }else {
                n = 1
                i += 1
            }

            if i + n >= nums.count || n == nums.count{
                break
            }else {
                if nums[i+n] < min {
                    i = 0
                    break
                }
            }
        }
        
        if i + n < nums.count {
            let temp2 =  nums[i+n]
            
            while nums[i] > temp2{
                if i <= 0 {
                    break
                }
                i -= 1
            }
        }

        return j - i + 1
    }
}
