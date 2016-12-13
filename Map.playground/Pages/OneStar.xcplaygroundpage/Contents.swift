//: [Previous](@previous)

import Foundation

/*Implement a function, rotN which will accept an integer n and return a
 function which will rotate input given to it by n.*/


func charactersToRot13(input: Character, n: Int) -> String{
    let alphabet: [Character: Int] = ["a": 0, "b": 1, "c": 2, "d": 3, "e": 4,
                                      "f": 5, "g": 6, "h":7, "i":8, "j": 9, "k": 10,
                                      "l": 11, "m": 12, "n": 13, "o": 14, "p": 15, "q": 16,
                                      "r": 17, "s": 18, "t": 19, "u": 20, "v": 21, "w": 22,
                                      "x": 23, "y":24, "z": 25]
    guard alphabet[input] != nil else{
        return String(input)
    }
    return String(alphabet[input]! + n)
}


func stringToRot13(input: String, n: Int) -> String {
    let newInput = input.lowercased()
    let newArray = newInput.characters.map{charactersToRot13(input: $0, n: n)}
    return newArray.joined(separator: "-")
    
}

stringToRot13(input: "cats", n: 6)
stringToRot13(input: "dogs!#!", n: 6)
stringToRot13(input: "!Frogs!", n: 6)