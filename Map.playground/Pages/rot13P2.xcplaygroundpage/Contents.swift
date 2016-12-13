//: [Previous](@previous)

import Foundation

/*Note that rot13Lossy preserves the 1 passed into it. This will lead to problems when converting back from the cypher. write a new version rot13 which will change each digit of any number into a corresponding upper case character. I am 1337 -> 8- -0-12- -A-C-C-G*/


func charactersToRot(input: Character) -> String{
    let alphabet: [Character: String] = ["a":"0", "b":"1", "c":"2", "d":"3", "e":"4", "f":"5", "g":"6", "h":"7", "i":"8", "j":"9", "k":"10", "l":"11", "m":"12", "n":"13", "o":"14", "p":"15", "q":"16", "r":"17", "s":"18", "t":"19", "u":"20", "v":"21", "w":"22", "x":"23", "y":"24", "z":"25", "1":"A", "2":"B", "3":"C", "4":"D", "5":"E", "6":"F", "7":"G", "8":"H", "9":"I", "0":"J"]
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
