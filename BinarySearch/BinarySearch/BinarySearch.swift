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
