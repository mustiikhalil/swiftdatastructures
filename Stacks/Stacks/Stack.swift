//
//  Stack.swift
//  Stacks
//
//  Created by Mustafa Khalil on 2/25/17.
//  Copyright © 2017 Mustafa Khalil. All rights reserved.
//

import Foundation


class Stack <T>{
    
    private var _top: Node<T>?
    
    init() {
        
    }
    func push(value: T){
        let oldTop = _top
        _top = Node(value: value)
        _top?.nextNode = oldTop
        
    }

    func pop() -> T?{
        let currentNode = _top
        _top = _top?.nextNode
        return currentNode?.value
    }
    
    func peak() -> T?{
        return _top?.value
    }
}
