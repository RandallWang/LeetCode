//
//  Heap.swift
//  LeetCode
//
//  Created by Tianchi Wang on 2019/1/7.
//  Copyright © 2019 Tianchi Wang. All rights reserved.
//

import Foundation

class Heap<T:Comparable> {
    private var heapArray:[T] = []
//    private let orderCriteria: (T, T) -> Bool

    
    init(array:[T], sort:@escaping (T, T) -> Bool) {
//        orderCriteria = sort
        heapArray = array
        heapify()
    }
    
    func count() -> Int {
        return heapArray.count
    }
    
    
    // return Next Node,The Bigger one
    func orderNode(_ i:Int) -> Int{
        let temp:T = heapArray[i - 1]
        
        var index = i * 2

        if index < heapArray.count && heapArray[index - 1] < heapArray[index] {
            index += 1
        }
        
        if temp > heapArray[index - 1] {
            return 0
        }else {
            heapArray[i - 1] = heapArray[index - 1]
            heapArray[index - 1] = temp
            return index
        }
    }

    
    func heapify() {
        print(self)
        for i in (1 ... heapArray.count/2).reversed() {//find all parent node
            var index = i
            while index * 2 <= heapArray.count && index != 0 {
                index = orderNode(index)
            }
        }
        print(self)
    }
}

extension Heap: CustomStringConvertible {
    public var description: String {
        var des = ""
        var i = 1
        var j = 1
        while j < heapArray.count {
            while j < Int(pow(Double(2), Double(i))) && j <= heapArray.count{
                des = des + "\(heapArray[j - 1])"
                j += 1
            }
            des = des + "\n ***********\n"
            i += 1
        }
        return des
    }
}
