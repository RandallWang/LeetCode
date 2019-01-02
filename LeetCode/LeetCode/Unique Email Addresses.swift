//
//  Unique Email Addresses.swift
//  LeetCode
//
//  Created by Tianchi Wang on 2018/12/31.
//  Copyright © 2018 Tianchi Wang. All rights reserved.
//

import Foundation


/**
 Every email consists of a local name and a domain name, separated by the @ sign.
 
 For example, in alice@leetcode.com, alice is the local name, and leetcode.com is the domain name.
 
 Besides lowercase letters, these emails may contain '.'s or '+'s.
 
 If you add periods ('.') between some characters in the local name part of an email address, mail sent there will be forwarded to the same address without dots in the local name.  For example, "alice.z@leetcode.com" and "alicez@leetcode.com" forward to the same email address.  (Note that this rule does not apply for domain names.)
 
 If you add a plus ('+') in the local name, everything after the first plus sign will be ignored. This allows certain emails to be filtered, for example m.y+name@email.com will be forwarded to my@email.com.  (Again, this rule does not apply for domain names.)
 
 It is possible to use both of these rules at the same time.
 
 Given a list of emails, we send one email to each address in the list.  How many different addresses actually receive mails?
 
 
 
 Example 1:
 
 Input: ["test.email+alex@leetcode.com","test.e.mail+bob.cathy@leetcode.com","testemail+david@lee.tcode.com"]
 Output: 2
 Explanation: "testemail@leetcode.com" and "testemail@lee.tcode.com" actually receive mails
 
 
 Note:
 
 1 <= emails[i].length <= 100
 1 <= emails.length <= 100
 Each emails[i] contains exactly one '@' character.

 */

class UniqueEmailAddresses {
    func numUniqueEmails(_ emails: [String]) -> Int {
        
        var emailSet:Set<String> = Set.init()
        
        for email in emails {
            let finalEmail = processEmail(email)
            emailSet.insert(finalEmail)
        }
        
        return emailSet.count;
    }
    
    func processEmail(_ email: String) -> String {
        let emailParts = email.split(separator: "@")
        guard let domain = emailParts.last, var rawLocal = emailParts.first else {
            print("Error")
            return ""
        }
        
        if rawLocal.contains("+") {
            rawLocal = rawLocal.split(separator: "+").first!
        }
        
        let newLocal = rawLocal.replacingOccurrences(of: ".", with: "")
        
        return newLocal + "@" + domain
    }
}