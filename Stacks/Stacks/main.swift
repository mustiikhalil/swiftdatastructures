//
//  main.swift
//  Stacks
//
//  Created by Mustafa Khalil on 2/25/17.
//  Copyright © 2017 Mustafa Khalil. All rights reserved.
//

import Foundation

var userStack: Stack? = Stack <String> ()

print(userStack?.isEmpty)
userStack?.push(value: "mustafa")
userStack?.push(value: "meow")
print(userStack?.isEmpty)
userStack = nil

print(userStack?.isEmpty)