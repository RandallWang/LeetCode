//
//  MaxProfit.swift
//  LeetCode
//
//  Created by Tianchi Wang on 2019/1/2.
//  Copyright © 2019 Tianchi Wang. All rights reserved.
//

import Foundation
/**
 Say you have an array for which the ith element is the price of a given stock on day i.
 
 If you were only permitted to complete at most one transaction (i.e., buy one and sell one share of the stock), design an algorithm to find the maximum profit.
 
 Note that you cannot sell a stock before you buy one.
 
 Example 1:
 
 Input: [7,1,5,3,6,4]
 Output: 5
 Explanation: Buy on day 2 (price = 1) and sell on day 5 (price = 6), profit = 6-1 = 5.
 Not 7-1 = 6, as selling price needs to be larger than buying price.
 Example 2:
 
 Input: [7,6,4,3,1]
 Output: 0
 Explanation: In this case, no transaction is done, i.e. max profit = 0.
 */


class maxProfit {
    func maxProfit(_ prices: [Int]) -> Int {
        var minPrice = Int.max
        var profit = 0
        
        for i in 0 ..< prices.count {
            if minPrice > prices[i] {
                minPrice = prices[i]
            }else if prices[i] - minPrice > profit{
                profit = prices[i] - minPrice
            }
        }
        
        return profit
    }
    
    func bruteForce_maxProfit(_ prices: [Int]) -> Int {
        var profit = 0
        
        for i in 0 ..< prices.count {
            let buy = prices[i]
            for j in i ..< prices.count {
                let sell = prices[j]
                if sell - buy > profit {
                    profit = sell - buy
                }
            }
        }
        
        return profit
    }
}
