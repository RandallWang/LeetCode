//
//  Heap.swift
//  LeetCode
//
//  Created by Tianchi Wang on 2019/1/7.
//  Copyright © 2019 Tianchi Wang. All rights reserved.
//

import Foundation

class Heap<T:Comparable> {
    var heapArray:[T] = []
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
    func orderNode(_ i:Int, toIndex bound:Int) -> Int{
        let temp:T = heapArray[i - 1]
        
        var index = i * 2

        if index < bound && heapArray[index - 1] < heapArray[index] {
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
        heapify(toIndex:heapArray.count)
    }
    
    func swapAt(_ i: Int, _ j:Int) {
        heapArray.swapAt(i-1, j-1)
        print(heapArray)
    }
    
    func heapify(toIndex:Int) {
        if toIndex == 1 {
            return
        }
        if toIndex == 2 && heapArray[0] < heapArray[1]{
            let temp = heapArray[0]
            heapArray[0] = heapArray[1]
            heapArray[1] = temp
            return
        }
        
        
        for i in (1 ... toIndex/2).reversed() {//find all parent node
            var index = i
            while index * 2 <= toIndex && index != 0 {
                index = orderNode(index, toIndex:toIndex)
            }
        }
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
