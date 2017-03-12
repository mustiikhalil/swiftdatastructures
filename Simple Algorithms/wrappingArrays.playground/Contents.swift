//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


//wrapping arrays

var selectedTrack = "klea"
func wrappingArray(array: [String]) -> [String]{
    var playlist = [String]()
    var priorsongs = [String]()
    
    for i in array{
        if i == selectedTrack || playlist.count > 0{
            playlist.append(i)
        }
        else{
            priorsongs.append(i)
        }
    }
    playlist += priorsongs
    
    return playlist
}

print(wrappingArray(array: ["mustafa","abdo","klea", "ibrahim","ibrahim"]))

// or easier implemented way


func wrappingArray2(array: [String], selected: String) -> [String]{
    var newArray = [String]()
    let index = array.index(where: {return $0 == selected})
    newArray += array.suffix(from: index!)
    newArray += array.prefix(upTo: index!)
    return newArray
}


print(wrappingArray2(array: ["mustafa","abdo","klea", "ibrahim","ibrahim"],selected: "ibrahim"))



