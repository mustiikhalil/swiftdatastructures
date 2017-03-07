////
////  main.swift
////  linkedList
////
////  Created by Mustafa Khalil on 12/28/16.
////  Copyright © 2016 Mustafa Khalil. All rights reserved.
////
//
//import Foundation

let node1 = Node(value: 1, next: nil)
let node2 = Node(value: 2, next: node1)
let node3 = Node(value: 3, next: node2)
let node4 = Node(value: 4, next: node3)
let list = LinkedList<Int>(value: 5, nextNode: node4)

//let newNode = Node(value: "Changes", next: nil)


//list.appendAtIndex(value: "Lady", newNode: newNode)

list.printList()
print("-----------------------")
list.removeAtIndex(value: 3)


print("-----------------------")
list.printList()

print("-----------------------")
//list.removeAtIndex(value: "Changes")


print("-----------------------")

list.reverseList()
list.printList()


// turn me on -> lady -> ezio's family -> cold -> welcome to heartbreak


