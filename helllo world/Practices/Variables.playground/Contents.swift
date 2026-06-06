import UIKit

//Variable VAR
var restaurantName = "Little Lemon"

print("Welcome to \(restaurantName)")

restaurantName = "Little Lemon Bistro"

print("Welcome to \(restaurantName)")

//Constant LET
let city = "Chicago"

print("Our Restaurant \(restaurantName) is located in \(city)")

var specialDish = "Pasta Alfredo"

var availableTables = 3

var dishPrice = 3.99

var isOpen = true

var numberOfTables = 6

let ownerName = "Rafael Cabrera"

print ("Today's special is: \(specialDish) - $\(dishPrice)")

print("\(restaurantName) has \(numberOfTables) tables, owned by \(ownerName)")

var award:String = "Michellin Stars"

var numAward:Int = 3

var starRating:Double = 4.99

var reservationStatus:Bool = true

print("\(restaurantName) holds \(numAward) \(award) and is rated with \(starRating) by the most prestigious food critiques")
if reservationStatus{
    print("Reservations are open!")
    print("Contact us here")
}

var pastaPrice = 12.99

var saladPrice = 5.50

var subTotal = pastaPrice + saladPrice

var tip = 0.15

var tipAmount = tip * subTotal

var total = tipAmount + subTotal

print("Subtotal: \(subTotal)")
print("Recommended Tip: \(tip * 100)")
print("Total: \(String(format:"%.1f",total))")
