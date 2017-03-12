//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class person{
    let name: String
    init(name: String) {
        self.name = name
    }
    deinit {
        print("\(name) is being deleted")
    }
}

var bob: person? = person(name: "bob")

bob = nil

var now = true
