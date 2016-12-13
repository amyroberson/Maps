//Write a function which takes a list of integers and returns a list of their cubes


func intsToCubes(list: [Int]) -> [Int] {
    return list.map({$0 * $0 * $0})
}

intsToCubes(list: [1,2,3,4])


