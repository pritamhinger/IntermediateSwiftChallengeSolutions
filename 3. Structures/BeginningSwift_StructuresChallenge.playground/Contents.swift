import UIKit

/*:
 #### Intermediate Swift Video Tutorial Series - raywenderlich.com
 #### Video 3: Structures
 
 **Note:** If you're seeing this text as comments rather than nicely-rendered text, select Editor\Show Rendered Markup in the Xcode menu.
 */

//: Create a T-shirt struct that has size, color and material options. The size prices go from 3, 5, 7. The colors range from red, blue, and white. It should range from 2, 3, and 1. Finally, for material options, choose regular or organic. It should be 5 or 10. Print out the result in calculatePrice()
struct TShirt{
    var size: String
    var color: String
    var material: String
    
    func calculatePrice() -> Int {
        var finalPrice = 0
        switch size {
        case "S":
            finalPrice += 3
        case "M":
            finalPrice += 5
        case "L":
            finalPrice += 7
        default:
            finalPrice += 0
        }
        
        switch color {
        case "red":
            finalPrice += 2
        case "blue":
            finalPrice += 3
        case "white":
            finalPrice += 1
        default:
            finalPrice += 0
        }
        
        switch material {
        case "regular":
            finalPrice += 5
        case "organic":
            finalPrice += 10
        default:
            finalPrice += 0
        }
        
        return finalPrice
    }
}
//: Here's an example of creating a struct: 
//: var tshirt = TShirt(size: "M", color: "red", material: "organic")
var tshirt = TShirt(size: "M", color: "red", material: "organic")
tshirt.calculatePrice()


//: **Ub3r H4ck3r Challenge** Refactor the code so that materials, color, and sizes are structs with a name and a price. Pass these structs into the TShirt and have it calculate the price
struct Attribute{
    var name: String
    var value: Int
}


var mediumSizeAttribute = Attribute(name: "Medium", value: 5)
var redColorAttribute = Attribute(name: "Red", value: 20)
var organicMaterialType = Attribute(name: "Organic", value: 10)

struct TShirtWithAttributes{
    var size: Attribute
    var color:Attribute
    var material:Attribute
    
    func calculatePrice() -> Int {
        var finalPrice = 0
        finalPrice += size.value
        finalPrice += color.value
        finalPrice += material.value
        
        return finalPrice
    }
}

var newTShirt = TShirtWithAttributes(size: mediumSizeAttribute, color: redColorAttribute, material: organicMaterialType)

newTShirt.calculatePrice()

