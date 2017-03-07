//
//  Node.swift
//  Stacks
//
//  Created by Mustafa Khalil on 2/25/17.
//  Copyright © 2017 Mustafa Khalil. All rights reserved.
//

import Foundation


class Node <T> {
    
    private var _value: T
    private var _nextNode: Node?
    
    var value: T{
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
    
    init(value: T) {
        self._value = value
    }
    
}
