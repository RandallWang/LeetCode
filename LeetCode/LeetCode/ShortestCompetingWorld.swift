//
//  ShortestCompetingWorld.swift
//  LeetCode
//
//  Created by Tianchi Wang on 2018/12/23.
//  Copyright © 2018 Tianchi Wang. All rights reserved.
//

/**
 Find the minimum length word from a given dictionary words, which has all the letters from the string licensePlate. Such a word is said to complete the given string licensePlate
 
 Here, for letters we ignore case. For example, "P" on the licensePlate still matches "p" on the word.
 
 It is guaranteed an answer exists. If there are multiple answers, return the one that occurs first in the array.
 
 The license plate might have the same letter occurring multiple times. For example, given a licensePlate of "PP", the word "pair" does not complete the licensePlate, but the word "supper" does.
 
 Example 1:
 Input: licensePlate = "1s3 PSt", words = ["step", "steps", "stripe", "stepple"]
 Output: "steps"
 Explanation: The smallest length word that contains the letters "S", "P", "S", and "T".
 Note that the answer is not "step", because the letter "s" must occur in the word twice.
 Also note that we ignored case for the purposes of comparing whether a letter exists in the word.
 Example 2:
 Input: licensePlate = "1s3 456", words = ["looks", "pest", "stew", "show"]
 Output: "pest"
 Explanation: There are 3 smallest length words that contains the letters "s".
 We return the one that occurred first.
 
 Note:
 licensePlate will be a string with length in range [1, 7].
 licensePlate will contain digits, spaces, or letters (uppercase or lowercase).
 words will have a length in the range [10, 1000].
 Every words[i] will consist of lowercase letters, and have length in range [1, 15].
*/

import Foundation

class ShortestCompetingWorld {
    func shortestCompletingWord(_ licensePlate: String, _ words: [String]) -> String {
        let target:[Character]  = self.perpareTheTarger(plate: licensePlate)
        
        var suitableResult:[String] = []
        
        //get all complete words
        for word in words {
            if isSuitableWord(word: word, plate: target) {
                suitableResult.append(word)
            }
        }
        
        var shortestResult: String = suitableResult.first!
        
        // find the first and the smallest word
        for result in suitableResult {
            if result.count < shortestResult.count {
                shortestResult = result
            }
        }
        
        return shortestResult
    }
    
    func isSuitableWord (word: String, plate: [Character]) -> Bool {//ignore case
        var lowerCaseWord = word.lowercased()
        
        for character in plate {
            if let index = lowerCaseWord.firstIndex(of: character) {
                lowerCaseWord.remove(at: index)
            }else {
                return false
            }
        }
        
        return true
    }
    
    func perpareTheTarger (plate: String) -> [Character] {
        let targetString = plate.components(separatedBy: NSCharacterSet.decimalDigits).joined().lowercased().components(separatedBy: NSCharacterSet.whitespaces).joined()
        
        return Array(targetString)
    }

}
