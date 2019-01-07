//
//  Sort.swift
//  LeetCode
//
//  Created by Tianchi Wang on 2019/1/7.
//  Copyright © 2019 Tianchi Wang. All rights reserved.
//

import Foundation

class Sort<T:Comparable> {
    func bubbleSort(_ sortArray:inout [T]) {
        for i in 0 ..< sortArray.count {
            for j in (i ..< sortArray.count - 1).reversed() {
                if sortArray [j] > sortArray[j+1] {
                    sortArray.swapAt(j, j+1)
                }
            }
        }
        print("\(sortArray)")
    }
    
    func selectSort(_ sortArray:inout [T]) {
        for i in 0 ..< sortArray.count {
            var minIndex = i
            var min = sortArray[i]
            for j in i ..< sortArray.count {
                if sortArray[j] < min {
                    min = sortArray[j]
                    minIndex = j
                }
            }
            if i != minIndex {
                sortArray.swapAt(i, minIndex)
            }
        }
    }
    
    
    func insertSort(_ sortArray:inout [T]){
        for i in 1 ..< sortArray.count {
            let temp = sortArray[i]
            var j = i
            while j > 0 && temp < sortArray[j - 1] {
                sortArray[j] = sortArray[j - 1]         //move J to right with offser 1
                j -= 1
            }
            sortArray[j] = temp
        }
    }
    
    func shellSort(_ sortArray:inout [T]) {
        
    }
    
    func mergeSort(_ sortArray:inout [T]) {
        
    }
    
    func heapSort(_ sortArray:inout [T]) {// i root node,2i left node, 2i+1 right node, use max-heap to sort array ascendingly, i starts from 1
        let heap = Heap.init(array: sortArray, sort: < )
        
        
        for j in (0 ..< sortArray.count).reversed() {
            sortArray.swapAt(0, j)
            adjustHeap(&sortArray, 0, j-1)
        }
    }
    
    func adjustHeap(_ heapArray:inout [T],_ fromIndex: Int,_ toIndex: Int) {//以树为准，后面涉及array index，统一减一
        var tempMax = heapArray[fromIndex]

        var i = fromIndex * 2

        while i <= toIndex {
            if i < toIndex && heapArray[i] < heapArray[i+1] {   //j < m make sure i+1 is not overflow,
                i += 1                                          //pick the bigger leaf node
            }
            
            if tempMax > heapArray[i]{
                break
            }
            
            heapArray[fromIndex] = heapArray[i]
            i = i * 2
        }
        
        heapArray[fromIndex] = tempMax
    }
    
    func quickSort(_ sortArray:inout [T]) {
        
    }

}
