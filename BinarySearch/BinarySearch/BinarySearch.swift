//
//  BinarySearch.swift
//  BinarySearch
//
//  Created by tokgozmusa on 30/07/2017.
//  Copyright © 2017 Mustafa Khalil. All rights reserved.
//

import Foundation

/*
 The function "binarySearch" returns the index of the element 'K' that
 you are searching in the 'Array', and returns -1 if the element 'K' is
 not in the 'Array'.
 */

func binarySearch <T: Comparable>(Array: [T], K: T, left: Int, right: Int) -> Int {
    // left index can not be less than 0
    // right index can not exceed the length of the Array
    if left < 0 || right > Array.count - 1 {
        return -1
    }
    // means the element is not in the Array
    if right < left {
        return -1
    }
    else {
        let mid = left + (right - left) / 2; // prevent integer overflow
        if Array[mid] == K {
            return mid
        }
        if Array[mid] < K {
            return binarySearch(Array: Array, K: K, left: mid + 1, right: right)
        }
        return binarySearch(Array: Array, K: K, left: left, right: mid - 1)
    }
}
