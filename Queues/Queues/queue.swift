//
//  queue.swift
//  Queues
//
//  Created by Mustafa Khalil on 3/30/17.
//  Copyright © 2017 Mustafa Khalil. All rights reserved.
//

import Foundation

// Errors Handling Enum
enum Errors: Error{
    case nilValue
}

// Queues data structure implemented to be generic

class Queue <T> {

    // saves the first and last entries of the Queue
    private var _start: Node<T>?
    private var _last: Node<T>?


    // checks if the Queue is empty
    var isEmpty: Bool{
        get{
            if (_start == nil){
                return true
            }
            else{
                return false
            }
        }
    }

    // initialize the Queue
    init() {

    }

    /** Dequeue's the first item that is entered the Queue
        Throws an Error incase the queue is empty
    */
    func deQueue() throws -> T {
       guard let returnValue = _start?.value else{
           throw Errors.nilValue
       }
        _start = _start?.next
        return returnValue
    }

    func enQueue(value: T){
        if (isEmpty){
            _start = Node(value: value)
            _last = _start
        }
        else {
            let node = Node(value: value)
            _last?.next = node
            _last = _last?.next
        }
    }

    // Returns the values of the the first and last without Dequeueing them or messing them up
    func getLast() throws -> T {
        guard let returnValue = _last?.value else{
            throw Errors.nilValue
        }
        return returnValue
    }

    func getFirst() throws -> T {
        guard let returnValue = _start?.value else{
            throw Errors.nilValue
        }
        return returnValue
    }

}
