//
//  Reverse String.swift
//  LeetCode
//
//  Created by Tianchi Wang on 2019/1/11.
//  Copyright © 2019 Tianchi Wang. All rights reserved.
//

import Foundation

/*
 Write a function that takes a string as input and returns the string reversed.
 
 Example 1:
 
 Input: "hello"
 Output: "olleh"
 Example 2:
 
 Input: "A man, a plan, a canal: Panama"
 Output: "amanaP :lanac a ,nalp a ,nam A"

 */

class ReverseString {
    func reverseString(_ s: String) -> String {
        var newString: String = ""
        
        for c in s.reversed() {
            newString.append(c)
        }
        
        return newString
    }
}
