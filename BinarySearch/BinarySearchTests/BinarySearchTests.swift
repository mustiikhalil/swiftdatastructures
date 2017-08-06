//
//  BinarySearchTests.swift
//  BinarySearchTests
//
//  Created by tokgozmusa on 06/08/2017.
//  Copyright © 2017 Mustafa Khalil. All rights reserved.
//

import XCTest

class BinarySearchTests: XCTestCase {
    
    var arr = ["a","b","c","d","e","f","g","h","i","j"]
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testBinarySearch() {
        // check the elements of the array
        XCTAssertTrue(binarySearch(Array: arr, K: "a", left: 0, right: (arr.count - 1)) == 0)
        XCTAssertTrue(binarySearch(Array: arr, K: "b", left: 0, right: (arr.count - 1)) == 1)
        XCTAssertTrue(binarySearch(Array: arr, K: "c", left: 0, right: (arr.count - 1)) == 2)
        XCTAssertTrue(binarySearch(Array: arr, K: "d", left: 0, right: (arr.count - 1)) == 3)
        XCTAssertTrue(binarySearch(Array: arr, K: "e", left: 0, right: (arr.count - 1)) == 4)
        XCTAssertTrue(binarySearch(Array: arr, K: "f", left: 0, right: (arr.count - 1)) == 5)
        XCTAssertTrue(binarySearch(Array: arr, K: "g", left: 0, right: (arr.count - 1)) == 6)
        XCTAssertTrue(binarySearch(Array: arr, K: "h", left: 0, right: (arr.count - 1)) == 7)
        XCTAssertTrue(binarySearch(Array: arr, K: "i", left: 0, right: (arr.count - 1)) == 8)
        XCTAssertTrue(binarySearch(Array: arr, K: "j", left: 0, right: (arr.count - 1)) == 9)
        
        // check edge cases
        XCTAssertTrue(binarySearch(Array: arr, K: "x", left: 0, right: (arr.count - 1)) == -1)
        XCTAssertTrue(binarySearch(Array: arr, K: "a", left: (arr.count - 1), right: 0) == -1)
        XCTAssertTrue(binarySearch(Array: arr, K: "a", left: 0, right: 0) == 0)
        XCTAssertTrue(binarySearch(Array: arr, K: "d", left: 2, right: 5) == 3)
        XCTAssertTrue(binarySearch(Array: arr, K: "c", left: -3, right: (arr.count - 1)) == -1)
        XCTAssertTrue(binarySearch(Array: arr, K: "c", left: 0, right: arr.count) == -1)
    }
    
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
