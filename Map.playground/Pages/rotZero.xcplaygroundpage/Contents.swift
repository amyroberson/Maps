//: [Previous](@previous)

import Foundation

/* Write a function which takes in a string and returns a “-“ separated list of numbers where each number represents the place of the given character in the english alphabet. input will consist only of lower case, upper case characters and punctuation. Punctuation (anything other than lower case characters) should be left alone. You are not expected to preserve case. cake! -> 2-0-10-4-!
 
 candy!-> 2-0-13-3-24-!*/

func charactersToRot(input: Character) -> String{
    let alphabet: [Character: Int] = ["a": 0, "b": 1, "c": 2, "d": 3, "e": 4,
                                      "f": 5, "g": 6, "h":7, "i":8, "j": 9, "k": 10,
                                      "l": 11, "m": 12, "n": 13, "o": 14, "p": 15, "q": 16,
                                      "r": 17, "s": 18, "t": 19, "u": 20, "v": 21, "w": 22,
                                      "x": 23, "y":24, "z": 25]
    guard alphabet[input] != nil else{
        return String(input)
    }
    return String(alphabet[input]!)
}


func stringToRot(input: String) -> String {
    let newInput = input.lowercased()
    let newArray = newInput.characters.map{charactersToRot(input: $0)}
    return newArray.joined(separator: "-")
    
}

stringToRot(input: "candy!!")
stringToRot(input: "Bugs!")


