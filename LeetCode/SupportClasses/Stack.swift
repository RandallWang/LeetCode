//
//  Stack.swift
//  LeetCode
//
//  Created by Tianchi Wang on 2019/1/6.
//  Copyright © 2019 Tianchi Wang. All rights reserved.
//

import Foundation

class Stack<T: Equatable> {
    private var array: [T] = []
    
    func push(_ val:T) {
        array.append(val)
    }
    
    func pop() -> T? {
        return array.popLast()
    }
    
    func peak() -> T? {
        return array.last
    }
}
