//: [Previous](@previous)

import Foundation

/*Write a function which takes in a string and returns a “-“ separated list of numbers where each number represents the place of the given character in the english alphabet. input will consist only of lower case characters.
*/

let word = "cake"
var array: [Character] = []

func lettersToNumbers(input: Character) -> String{
   let alphabet: [Character: Int] = ["a": 0, "b": 1, "c": 2, "d": 3, "e": 4, "f": 5, "g": 6, "h":7, "i":8, "j": 9, "k": 10, "l": 11, "m": 12, "n": 13, "o": 14, "p": 15, "q": 16, "r": 17, "s": 18, "t": 19, "u": 20, "v": 21, "w": 22, "x": 23, "y":24, "z": 25]
    //let alphabet [Character] = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k" "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    return String((alphabet[input]!))
}


func wordToNumbers(input: String) -> String {
    guard input == input.lowercased() else {
        return "You have a capital letter in your input"
    }
    let newArray = input.characters.map{(lettersToNumbers(input: $0))}
    return newArray.joined(separator: "-")
}

wordToNumbers(input: "cake")
wordToNumbers(input: "candy")
wordToNumbers(input: "amy")






