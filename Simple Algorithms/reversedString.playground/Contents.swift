//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var sentance = "welcome to heartbreak this is heartbreak"


/*
    1- the function replaces the 2nd word with it's inverse 
 
    2- returns it all
 */

func reverseSentance(sentance: String) -> String{

    let allWords = sentance.components(separatedBy: " ")
    var newWord = ""
    
    for index in 0...allWords.count-1{
        if newWord != ""{
            newWord += " "
        }
        if index % 2 == 1{
            let new = allWords[index].characters.reversed()
            newWord += String(new)
        }
        if index % 2 == 0{
            newWord += allWords[index]
        }
    }
    
    return newWord
}

extension String{
    func removeVowels() -> String{
        var newstring = ""
        for i in self.characters{
            if (i == "a") || (i == "e") || (i == "o") || (i == "u") || (i == "i"){
                
            }
            else{
                newstring += String(i)
            }
        }
        return newstring
    }
    
    // better approach 
    
    func removeVowels2() -> String{
        var newstring = self
        
        for Vowel in ["a","e","u","i","o"]{
           newstring = newstring.replacingOccurrences(of: Vowel, with: "")
        }
        return newstring
    }
}

print(reverseSentance(sentance: sentance).removeVowels2())


