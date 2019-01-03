//
//  HammingDistance.swift
//  LeetCode
//
//  Created by Tianchi Wang on 2019/1/2.
//  Copyright © 2019 Tianchi Wang. All rights reserved.
//

import Foundation
/**
 The Hamming distance between two integers is the number of positions at which the corresponding bits are different.
 
 Given two integers x and y, calculate the Hamming distance.
 
 Note:
 0 ≤ x, y < 231.
 
 Example:
 
 Input: x = 1, y = 4
 
 Output: 2
 
 Explanation:
 1   (0 0 0 1)
 4   (0 1 0 0)
        ↑   ↑
 
 The above arrows point to positions where the corresponding bits are different.

 */
class HammingDistance {
    func hammingDistance(_ x: Int, _ y: Int) -> Int {
        var distance = 0

        var xBit = String(x, radix:2)
        var yBit = String(y, radix:2)
        
        while xBit.count != yBit.count {
            if xBit.count > yBit.count {
                yBit = "0" + yBit
            }else {
                xBit = "0" + xBit
            }
        }
        
        for i in 0 ..< xBit.count {
            let xIndex = xBit.index(xBit.startIndex, offsetBy: i)
            let yIndex = yBit.index(yBit.startIndex, offsetBy: i)
            
            if xBit[xIndex] != yBit[yIndex] {
                distance += 1
            }
        }
        
        return distance
    }
    
    func digits_hammingDistance(_ x: Int, _ y: Int) -> Int {
        let result = x ^ y
        
        return result.nonzeroBitCount
    }
}
