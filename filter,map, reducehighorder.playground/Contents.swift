//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


var array = [1,2,3,4,3,3]


// filtering instead of using a for loop


let filteredArray = array.filter({ return $0 == 3})
filteredArray

// mapping 

var maparray = [1,2,3,4]

let mappedarray = maparray.flatMap({return $0 * 2})
mappedarray

let reducedelement = maparray.reduce(0, {sum, number in sum + number})
reducedelement


