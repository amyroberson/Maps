//: [Previous](@previous)

import Foundation

/*Note that rot13Lossy preserves the 1 passed into it. This will lead to problems when converting back from the cypher. write a new version rot13 which will change each digit of any number into a corresponding upper case character. I am 1337 -> 8- -0-12- -A-C-C-G*/


func charactersToRot(input: Character) -> String{
    let alphabet: [Character: String] = ["a":"13", "b":"14", "c":"15", "d":"16", "e":"17", "f":"18", "g":"19", "h":"20", "i":"21", "j":"22", "k":"23", "l":"24", "m":"25", "n":"26", "o":"27", "p":"28", "q":"29", "r":"30", "s":"31", "t":"32", "u":"33", "v":"34", "w":"35", "x":"36", "y":"37", "z":"38", "1":"A", "2":"B", "3":"C", "4":"D", "5":"E", "6":"F", "7":"G", "8":"H", "9":"I", "0":"J"]
    guard alphabet[input] != nil else{
        return String(input)
    }
    return (alphabet[input]!)
}


func stringToRot13P2(input: String) -> String {
    let newInput = input.lowercased()
    let newArray = newInput.characters.map{charactersToRot(input: $0)}
    return newArray.joined(separator: "-")
    
}

stringToRot13P2(input: "candy!11!")
stringToRot13P2(input: "Bugs!#45")
stringToRot13P2(input: "dogs!1234")
stringToRot13P2(input: " i am 1337")