//
//  TreeNode.swift
//  BinarySearchTree
//
//  Created by Mustafa Khalil on 2/15/17.
//  Copyright © 2017 Mustafa Khalil. All rights reserved.
//

import Foundation


//: Playground - noun: a place where people can play

class TreeNode <T> {
    private var _value: T?
    private var _leftChild: TreeNode?
    private var _rightChild: TreeNode?
    var value: T{
        get{
            return _value!
        }
        set{
            _value = newValue
        }
    }
    var leftChild: TreeNode?{
        get{
            return _leftChild
        }
        set{
            _leftChild = newValue
        }
    }
    var rightChild: TreeNode?{
        get{
            return _rightChild
        }
        set{
            _rightChild = newValue
        }
    }
    
    
    
    init(value: T, left: TreeNode?, right: TreeNode?) {
        self._value = value
        self._leftChild = left
        self._rightChild = right
    }
    init(){
        self._value = nil
        self._leftChild = nil
        self._rightChild = nil
    }
}


//
//let oneNode = TreeNode(value: 1, left: nil, right: nil)
//let fiveNode = TreeNode(value: 5, left: oneNode, right: nil)
//
//let elevenNode = TreeNode(value: 11, left: nil, right: nil)
//let twentyNode = TreeNode(value: 20, left: nil, right: nil)
//
//let fourtheenNode = TreeNode(value: 14, left: elevenNode, right: twentyNode)
//
//
//let tenNode = TreeNode(value: 10, left: fiveNode, right: fourtheenNode)
//

//
//func binarySearch(node: TreeNode<Any>?, searchValue: Int) -> Bool{
//    if (searchValue == node?.value){
//        return true
//    }
//    if ( node?.leftChild != nil && searchValue < (node?.value)!){
//        return binarySearch(node: node?.leftChild, searchValue: searchValue)
//    }
//    else if (node?.leftChild != nil && searchValue > (node?.value)!){
//        return binarySearch(node: node?.rightChild, searchValue: searchValue)
//    }
//    else{
//        return false
//    }
//
//}
//
//
//
//
//print(binarySearch(node: tenNode, searchValue: 12))


