//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


class foundElement{
    private var _found: Bool = false
    private var _values: [Int] = [Int]()
    
    var found: Bool{
        get{
            return _found
        }
        set{
            _found = newValue
        }
    }
    var values: [Int]{
        get{
            return _values
        }
        set{
            _values = newValue
        }
    }

    init() {
        
    }
}


var a = [1,2,3,9]
var b = [9,4,2,4]

func findingSum(sum: Int, Array: [Int]) -> foundElement{
    var zeroth = 0
    var last = Array.count - 1
    let gotIt = foundElement()
    for _ in 0...Array.count-1{
        
        if (Array[zeroth] + Array[last]) == sum{
            gotIt.found = true
            gotIt.values = [zeroth,last]
            return gotIt
            
        }
        else if (Array[zeroth] + Array[last]) <= sum{
            zeroth += 1
        }
        else{
            last -= 1
        }
    }
    return gotIt
}


print(findingSum(sum: 8, Array: b).found, findingSum(sum: 8, Array: b).values)




func findingSumUnorded(sum: Int, Array: [Int]) -> Bool{
    var checked = Set<Int>()
    var i = 0
    
    while (i < Array.count){
        let number = sum - Array[i]
        if checked.contains(number){
            return true
        }
        else{
            checked.insert(Array[i])
        }
        i += 1
    }
    
    return false
}

print(findingSumUnorded(sum: 8, Array: b))


