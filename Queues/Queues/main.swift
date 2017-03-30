//
//  main.swift
//  Queues
//
//  Created by Mustafa Khalil on 3/30/17.
//  Copyright © 2017 Mustafa Khalil. All rights reserved.
//

import Foundation

print("Hello, World!")


var list: Queue = Queue<Int>()
list.enQueue(value: 2)
list.enQueue(value: 3)
list.enQueue(value: 4)

print(list.isEmpty)

print("------")
try print(list.getFirst())
try print(list.getLast())
print("------")
try print("This is dequeued \(list.deQueue())")
print("------")
try print(list.getFirst())
try print(list.getLast())
print("------")
try print("This is dequeued \(list.deQueue())")
print("------")
try print(list.getFirst())
try print(list.getLast())
print("------")
try print("This is dequeued \(list.deQueue())")
print("------")

print(list.isEmpty)

