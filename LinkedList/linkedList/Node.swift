//
//  Node.swift
//  linkedList
//
//  Created by Mustafa Khalil on 12/28/16.
//  Copyright © 2016 Mustafa Khalil. All rights reserved.
//

/**

 This is a Node class that has two constructors, one that will have the value of the second node and the other that won't.

 */

import Foundation

public class Node <T> {
    private var _value: T?
    private var _nextNode: Node?

    var value: T?{
        get{
            return _value
        }
        set{
            _value = newValue
        }
    }

    var nextNode: Node?{
        get{
            return _nextNode
        }
        set{
            _nextNode = newValue
        }
    }

    init(value: T, next: Node?) {
        self._value = value
        self._nextNode = next
    }

    init(){
        self._value = nil
        self._nextNode = nil
    }
}


