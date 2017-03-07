//
//  main.swift
//  BinarySearch
//
//  Created by Mustafa Khalil on 1/30/17.
//  Copyright © 2017 Mustafa Khalil. All rights reserved.
//

import Foundation

print("Hello, World!")



func binarySearch <T: Comparable>(Array: [T], K: T,left: Int,right: Int) -> Int{
    if right < left{
        return -1
    }
    else{
        let mid = (left+right)/2
        if Array[mid] == K{
            return mid
        }
        if Array[mid] < K{
            return binarySearch(Array: Array, K: K, left: mid+1, right: right)
        }
        else{
            
            return binarySearch(Array: Array, K: K, left: left, right: mid-1)
        }
    }
}


var number = ["a","b","c","d","e","f","g","h","i","j"]
print(binarySearch(Array: number,K: "i",left: 0,right: (number.count - 1)))


// factorial algorithm


func factorial(num: Int) -> Int{
    if num == 1{
        return 1
    }
    else{
        return num * factorial(num: num-1)
    }
}

print(factorial(num: 5))

