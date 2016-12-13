
enum Parity {
    case odd
    case even
}

func convertToParity(x: Int) -> Parity {
    var newElement: Parity
    if x % 2 == 0 {
        newElement = .even
    } else {
        newElement = .odd
    }
    return newElement
}

let numberArray = [1, 2, 3, 4, 5, 6 , 7 ]
let newArray = numberArray.map({convertToParity(x: $0)})
newArray == [.odd, .even, .odd, .even, .odd, .even, .odd]

let numberArray2 = [ 1, 1, 1]
let newArray2 = numberArray2.map({convertToParity(x: $0)})
newArray2 == [.odd, .odd, .odd]

let numberArray3 = [ 1, 4, 1]
let newArray3 = numberArray3.map({convertToParity(x: $0)})
newArray2 == [.odd, .even, .odd]



func intsToParity(list:[Int]) -> [Parity] {
    return list.map{(convertToParity(x: $0))}
}

intsToParity(list: numberArray) == newArray
intsToParity(list: numberArray2) == newArray2
intsToParity(list: numberArray3) == newArray3