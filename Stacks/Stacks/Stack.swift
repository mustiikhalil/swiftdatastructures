//
//  Stack.swift
//  Stacks
//
//  Created by Mustafa Khalil on 2/25/17.
//  Copyright © 2017 Mustafa Khalil. All rights reserved.
//

import Foundation



// stack data structure implemented to be generic

class Stack <T>{
    
    private var _top: Node<T>?

    // initialize the stack
    init() {
        
    }

    // checks if the stack is empty
    var isEmpty: Bool{
        get{
            if _top == nil{
                return true
            }
            else{
                return false
            }
        }
    }

    // This function adds items to the list
    func push(value: T){
        let oldTop = _top
        _top = Node(value: value)
        _top?.nextNode = oldTop
        
    }

    // This function returns and removes the top value
    func popPeak() -> T?{
        let currentNode = _top
        _top = _top?.nextNode
        return currentNode?.value
    }

    // This function returns that top value without removing it
    func peak() -> T?{
        return _top?.value
    }


    // This function removes the top without returning
    func pop() {
        _top = _top?.nextNode
    }
}
