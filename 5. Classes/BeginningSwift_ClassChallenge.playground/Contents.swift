import UIKit

/*:
 #### Intermediate Swift Video Tutorial Series - raywenderlich.com
 #### Video 5: Classes
 
 **Note:** If you're seeing this text as comments rather than nicely-rendered text, select Editor\Show Rendered Markup in the Xcode menu.

 Make the following objects and determine whether they are structs or classes. For the properties, use properties unless noted below.
 
 TShirt: size, color
 Address: street, city, state, zipCode
 User: firstName, lastName, address (Address object)
 ShoppingCart: shirts (array of TShirt), User (user object)
 
 */
struct TShirt{
    var size:Int
    var color:String
}

struct Address{
    var street:String
    var city:String
    var state:String
    var zipcode:Int
}

class User{
    var firstName:String
    var lastName:String
    var address:Address
    
    init() {
        self.firstName = ""
        self.lastName = ""
        self.address = Address(street: "", city: "", state: "", zipcode: 123456)
    }
}

class ShoppingCart{
    var shirts:[TShirt]
    var user:User
    
    init() {
        shirts = [TShirt]()
        user = User()
    }
}