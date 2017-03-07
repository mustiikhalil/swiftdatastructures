//
//  linkedList.swift
//  linkedList
//
//  Created by Mustafa Khalil on 12/28/16.
//  Copyright © 2016 Mustafa Khalil. All rights reserved.
//


import Foundation


public class LinkedList<T>{

    private var _startNode: Node<T> = Node()

    var isEmpty: Bool{
        get {
            if _startNode.value == nil{
                return true
            }
            else{
                return false
            }
        }
    }

    func makeEmpty(){
        _startNode.value = nil
        _startNode.nextNode = nil
    }

    public var last: Node<T>?{
        if var node = _startNode as? Node<T>{
            while case let next? = node.nextNode{
                node = next
            }
            return node
        }
        else{
           return nil
        }
    }

    var startNode: Node<T> {
        get {
            return _startNode
        }
        set {
            _startNode = newValue
        }
    }


    init(value: T, nextNode: Node<T>) {
        self._startNode.value = value
        self._startNode.nextNode = nextNode
    }
    init() {
        self._startNode.nextNode = nil
    }
    func append(newNode: Node<T>){
        last?.nextNode = newNode
    }

    func printList(){
        if var node = _startNode as? Node<T>{
            while case let next = node{
                print(node.value!)
                if nil == next.nextNode{
                    break;
                }
                else{
                    node = next.nextNode!
                }
            }
        }
    }

    func appendAtIndex <X: Comparable> (value: X, newNode: Node<T>){

        if let new = newNode as? Node<T> {
            if var node = _startNode as? Node {
                while case let next = node {
                    if let currentNodevalue = node.value as? X{
                        if currentNodevalue == value {
                            let nextedNode = node.nextNode
                            node.nextNode = new
                            new.nextNode = nextedNode
                            break;
                        }
                    }
                    if nil == next.nextNode {
                        append(newNode: new)
                        break
                    }
                    node = next.nextNode!
                }

            }
        }
    }
    func removeAtIndex <X: Comparable> (value: X){
            if var node = _startNode as? Node {
                while case let next = node {
                    if nil == next.nextNode {
                        break
                    }
                    if let currentNodevalue = node.nextNode?.value as? X{
                        if currentNodevalue == value{
                            if node.nextNode?.nextNode == nil{
                                node.nextNode = nil
                            }
                            else{
                                node.nextNode = (node.nextNode?.nextNode)!
                            }
                            break
                        }
                    }
                    node = next.nextNode!
                }
            }
    }


    func reverseList(){
        var node: Node <T>? = _startNode
        var next: Node <T>?
        var prev: Node <T>?
        while case let current = node{
            next = current?.nextNode
            current?.nextNode = prev
            prev = current
            node = next

            if next == nil{
                _startNode = current!
                break
            }
        }
    }
}
