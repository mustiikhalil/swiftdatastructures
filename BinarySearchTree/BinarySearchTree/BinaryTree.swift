//
// Created by Mustafa Khalil on 2/24/17.
// Copyright (c) 2017 Mustafa Khalil. All rights reserved.
//

import Foundation


class BinaryTree <T> {
    private var _root = TreeNode<T>()
    var root: TreeNode<T>{
        get{
            return _root
        }
        set{
            _root = newValue
        }
    }
    var rootValue: T{
        get{
            return _root.value
        }
        set{
           _root.value = newValue
        }
    }

    var leftChild: TreeNode<T>{
        get{
           return _root.leftChild!
        }
        set{
            _root.leftChild = newValue
        }
    }
    var rightChild: TreeNode<T>{
        get{
            return _root.rightChild!
        }
        set{
            _root.rightChild = newValue
        }
    }

    init(){

    }
    init(value: T, left: TreeNode<T>, right: TreeNode<T>){
        self._root.value = value
        self._root.leftChild = left
        self._root.rightChild = right
    }

    func binarySearch <T: Comparable>  (searchValue: T, tree: TreeNode<T>) -> Bool{
        if (searchValue == tree.value){
            return true
        }
        if (searchValue < tree.value && tree.leftChild != nil){
            if let leftTree = tree.leftChild as? TreeNode!{
                 return binarySearch(searchValue: searchValue, tree: leftTree)
             }
        }
        else if (searchValue > tree.value && tree.rightChild != nil){
            if let rightTree = tree.rightChild as? TreeNode!{
                return binarySearch(searchValue: searchValue, tree: rightTree)
            }
        }
        else{
            return false
        }
    }


}
