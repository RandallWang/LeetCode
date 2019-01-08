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
        
    func iterative_mergeSort(_ sortArray:inout [T]) {
        
    }

    func recursive_mergeSort(_ sortArray:inout [T]) {
        
    }

    func heapSort(_ sortArray:[T]) -> [T]{// i root node,2i left node, 2i+1 right node, use max-heap to sort array ascendingly, i starts from 1
        let heap = Heap.init(array: sortArray, sort: < )
        
        for j in (2 ... sortArray.count).reversed() {
            heap.swapAt(1, j)
            heap.heapify(toIndex:j-1)
        }
        
        return heap.heapArray
    }
    
    func iterative_quickSort(_ sortArray:inout [T]) {
        
    }
    
    func recursive_quickSort(_ sortArray:inout [T]) {
        quickSort(sortArray: &sortArray, leftIndex: 0, rightIndex: sortArray.count - 1)
    }
}

extension Sort{
    func mergeTwoArray(a:[T], b:[T]) -> [T] {
        var result:[T] = []
        var i:Int = 0
        var j:Int = 0
        
        while i < result.count {
            result.append(a[i])
            i += 1
        }
        
        j += 1
        return result
    }
    
    func quickSort(sortArray:inout [T], leftIndex:Int, rightIndex:Int) {
        if leftIndex < rightIndex {
            let pivot = partition(sortArray: &sortArray, leftIndex: leftIndex, rightIndex: rightIndex)
            
            quickSort(sortArray: &sortArray, leftIndex: leftIndex, rightIndex: pivot - 1)
            quickSort(sortArray: &sortArray, leftIndex: pivot + 1, rightIndex: rightIndex)
        }
    }
    
    func partition(sortArray:inout [T], leftIndex:Int, rightIndex:Int) -> Int {
        var leftIndex = leftIndex
        var rightIndex = rightIndex
        
        while leftIndex < rightIndex {
            let pivot = sortArray[leftIndex]

            while sortArray[rightIndex] >= pivot && leftIndex < rightIndex {
                rightIndex -= 1
            }
            sortArray.swapAt(leftIndex, rightIndex)//sortArray[rightIndex] < pivot
            
            while sortArray[leftIndex] <= pivot && leftIndex < rightIndex {
                leftIndex += 1
            }
            sortArray.swapAt(leftIndex, rightIndex)//sortArray[leftIndex] > pivot
        }
        
        return leftIndex
    }
}
