//
//  TwoSum.swift
//  LeetCode
//
//  Created by Tianchi Wang on 2018/10/21.
//  Copyright © 2018 Tianchi Wang. All rights reserved.
//

/*
 Given an array of integers, return indices of the two numbers such that they add up to a specific target.
 
 You may assume that each input would have exactly one solution, and you may not use the same element twice.
 
 Example:
 
 Given nums = [2, 7, 11, 15], target = 9,
 
 Because nums[0] + nums[1] = 2 + 7 = 9,
 return [0, 1].
*/


class TwoSum {
    class func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int : Int]()
        
        for (k,v) in nums.enumerated() {
            let complement = target - v
            
            if let index = dict[complement], index != k {
                return [index,k]
            }
            dict [v] = k
        }
        
        return []
    }
}
