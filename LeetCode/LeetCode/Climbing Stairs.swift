//
//  Climbing Stairs.swift
//  LeetCode
//
//  Created by Tianchi Wang on 2019/2/21.
//  Copyright © 2019 Tianchi Wang. All rights reserved.
//

import Foundation

/*
You are climbing a stair case. It takes n steps to reach to the top.

Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?

Note: Given n will be a positive integer.

Example 1:

Input: 2
Output: 2
Explanation: There are two ways to climb to the top.
1. 1 step + 1 step
2. 2 steps
Example 2:

Input: 3
Output: 3
Explanation: There are three ways to climb to the top.
1. 1 step + 1 step + 1 step
2. 1 step + 2 steps
3. 2 steps + 1 step
*/

class ClimbingStairs {
    
    // O(2^n)
    func climbStairs(_ n: Int) -> Int {
//        return climb_Stairs(0, n)
        var memo:[Int] = Array.init(repeating: 0, count: n);
        return memoryClimbStaris(0, n, memo: &memo)
    }
    
    private func climb_Stairs(_ i: Int, _ n: Int) -> Int {
        if i > n {
            return 0
        }
        if i == n {
            return 1
        }
        
        return climb_Stairs(i + 1, n) + climb_Stairs(i + 2, n)
    }
    
    private func memoryClimbStaris(_ i: Int, _ n: Int, memo:inout [Int]) -> Int {
        if i > n {
            return 0
        }
        if i == n {
            return 1
        }

        if  memo[i] > 0 {
            return memo[i]
        }
        memo[i] = memoryClimbStaris(i + 1, n, memo: &memo) + memoryClimbStaris(i + 2, n, memo: &memo)
        return memo[i]
    }
    
}
