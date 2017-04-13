//
// Created by Mustafa Khalil on 2/24/17.
// Copyright (c) 2017 Mustafa Khalil. All rights reserved.
//

import Foundation

let tree1 = TreeNode(value: 3, left: nil, right: nil)
let tree2 = TreeNode(value: 6, left: nil, right: nil)

let tree3 = TreeNode(value: 5, left: tree1, right: nil)

let tree12 = TreeNode(value: 12, left: nil, right: nil)
let tree17 = TreeNode(value: 17, left: nil, right: nil)

let tree15 = TreeNode(value: 15, left: tree12, right: tree17)

var binarTree = BinaryTree(value: 10, left: tree3, right: tree15)

var x = binarTree.root

print(binarTree.binarySearch(searchValue: 6, tree: binarTree.root))

binarTree.convertBST(binarTree.root)