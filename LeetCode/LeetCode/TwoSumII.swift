//
//  TwoSumII.swift
//  LeetCode
//
//  Created by Tianchi Wang on 2018/10/21.
//  Copyright © 2018 Tianchi Wang. All rights reserved.
//

/*
 Given an array of integers that is already sorted in ascending order, find two numbers such that they add up to a specific target number.
 
 The function twoSum should return indices of the two numbers such that they add up to the target, where index1 must be less than index2.
 
 Note:
 
 Your returned answers (both index1 and index2) are not zero-based.
 You may assume that each input would have exactly one solution and you may not use the same element twice.
 Example:
 
 Input: numbers = [2,7,11,15], target = 9
 Output: [1,2]
 Explanation: The sum of 2 and 7 is 9. Therefore index1 = 1, index2 = 2.
*/
class TwoSumII {
    //O(n2)
    func bruteForce(_ nums: [Int], target: Int) -> [Int] {
        for indexI in 0..<nums.count {
            for indexJ in 1..<nums.count {
                if nums[indexI] + nums[indexJ] == target && indexJ > indexI{
                    return [indexI + 1, indexJ + 1]
                }
            }
        }
        return [];
    }
    
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        if target < numbers.first! {
            return[]
        }
        
        var j = numbers.count - 1
        var i = 0
        
        while i < j {
            if numbers[i] + numbers[j] < target {
                i += 1
            }else if numbers[i] + numbers[j] > target{
                j -= 1
            }else {
                return [i+1,j+1]
            }
        }
        
        return []
    }
}
