import Foundation

/*Write a method, dessert that accepts [[String: String]] and changes the values associated with keys in the following ways: if the key "ice cream" has a value, remove the key and associate the value with the new key "yogurt". If the key "toppings" has the value "jimmies", change that value to "sprinkles".
 
 [[“ice cream": "cherry”]] -> [[“yogurt": "cherry"]]
 
 [[“toppings": "jimmies", "ice cream": "cherry”]] -> [["toppings": "sprinkles", "yogurt": "cherry”]]
 
 [[“yogurt": "strawberry”]] -> [[“yogurt": "strawberry”]]
 */

var dictionary1 = [["icecream" : "cherry"]]
var dictionary2 = [["toppings": "jimmies", "icecream": "cherry"]]

func evaluateAndChange(input: [String:String]) -> [String: String] {
    var input = input
    if input["icecream"] != nil{
        input["yogurt"] = input["icecream"]
        input["icecream"] = nil
        
    }
    if input["toppings"] == "jimmies" {
        input["toppings"] = "sprinkles"
        
    }
    return input
}

let x = (dictionary1.map{evaluateAndChange(input: $0)})
let y = (dictionary2.map{evaluateAndChange(input: $0)})

func uppdatingDictonary(input:[[String:String]]) -> [[String: String]] {
    return input.map{evaluateAndChange(input: $0)}
}
uppdatingDictonary(input: dictionary1)
uppdatingDictonary(input: dictionary2)

