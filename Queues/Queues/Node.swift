//
//  Node.swift
//  Queues
//
//  Created by Mustafa Khalil on 3/30/17.
//  Copyright © 2017 Mustafa Khalil. All rights reserved.
//

import Foundation

// generic Node class that would work with all the types

class Node <T>{

    // private var so other classes can't easily change the data
    private var _value: T?
    private var _next: Node?

    // getter and setter for the values, and nodes
    var value: T?{
        get{
            return _value
        }
    }
    var next: Node?{
        set{
            _next = newValue
        }
        get{
            return _next
        }
    }
    
    init(value: T) {
        _value = value
        _next = nil
    }
    init(){

    }
}
