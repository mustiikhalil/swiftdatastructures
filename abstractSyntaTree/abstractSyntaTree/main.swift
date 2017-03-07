//
//  main.swift
//  abstractSyntaTree
//
//  Created by Mustafa Khalil on 2/15/17.
//  Copyright (c) 2017 MustafaKhalil. All rights reserved.
//

import Foundation

print("Hello, World!")


class Node{
    private var _operation: String?
    private var _value: Double?
    private var _leftChild: Node?
    private var _rightChild: Node?
    var value: Double!{
        get{
            return _value
        }
        set{
            _value = newValue
        }
    }
    var leftChild: Node?{
        get{
            return _leftChild
        }
        set{
            _leftChild = newValue
        }
    }
    var rightChild: Node?{
        get{
            return _rightChild
        }
        set{
            _rightChild = newValue
        }
    }
    var operation: String?{
        get{
            return _operation
        }
        set{
            _operation = newValue
        }
    }

    init(oper: String?,value: Double?, left: Node?, right: Node?) {
        self._operation = oper
        self._value = value
        self._leftChild = left
        self._rightChild = right
    }
}



func evaluate(tree: Node)  -> Double{
    var leftNumber = 0.0
    var rightNumber = 0.0
    if tree.rightChild == nil && tree.leftChild == nil{
        return (tree.value)!
    }
    if tree.leftChild != nil{
        leftNumber = evaluate(tree: tree.leftChild!)

    }
    if tree.rightChild != nil{
         rightNumber = evaluate(tree: tree.rightChild!)
    }
    switch (tree.operation!){
        case "+": return leftNumber + rightNumber
        case "-": return leftNumber - rightNumber
        case "*": return  leftNumber * rightNumber
        default:
            if rightNumber == 0{
                print("error")
                exit(1)
            }
            else {
                return leftNumber / rightNumber
            }
    }
}


let firstNode = Node(oper: nil, value: 25, left: nil, right: nil)
let SecondNode = Node(oper: nil, value: 6, left: nil, right: nil)
let firstOperaterNode = Node(oper: "*", value: nil, left: firstNode, right: SecondNode)
let rightNode = Node(oper: nil, value: 0, left: nil, right: nil)
let leftNode = Node(oper: nil, value: 8, left: nil, right: nil)
let secondOperaterNode = Node(oper: "/", value: nil, left: leftNode, right: rightNode)

let thirdOperaternode = Node(oper: "+", value: nil, left: firstOperaterNode, right: secondOperaterNode)
print(evaluate(tree: thirdOperaternode))