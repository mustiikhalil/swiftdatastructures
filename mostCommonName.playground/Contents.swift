//: Playground - noun: a place where people can play

import UIKit

var names = ["mustafa", "Klea", "ibrahim", "abdo", "Klea", "Klea", "mustafa"]
var mapping = [String: Int]()

func mostCommonname(array: [String])-> String{
    
    for name in names{
        if let nameCount = mapping[name.lowercased()]{
            mapping[name.lowercased()] = nameCount + 1
        }
        else{
            mapping[name.lowercased()] = 1
        }
    }
    var mostcommon = ""
    var currentvale = 0
    for (K,M) in mapping{
        if mostcommon == ""{
            mostcommon = K
            currentvale = M
        }
        if currentvale < M{
            mostcommon = K
        }
    }
    
    return mostcommon
}

mostCommonname(array: names)
