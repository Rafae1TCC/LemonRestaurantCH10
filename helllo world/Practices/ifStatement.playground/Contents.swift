import UIKit

var guests:Int = 7
let capacity:Int = 10

if guests > capacity{
    print("Over Capacity!")
} else {
    print("We can seat this party!")
}

let rating = 4.2

if rating >= 4.5 {
    print("Excellent")
} else if rating >= 3.5 {
    print ("Good")
} else {
    print("Needs Improvement")
}

let isOpen = true
let hasOutDoorSeating = true

if isOpen && hasOutDoorSeating {
    print("Open with outdoor seating")
} else if isOpen && !hasOutDoorSeating{
    print("Open indoor only")
} else {
    print("Closed")
}

let userName = "Ken"

if userName == "Ken" {
    print("Welcome, \(userName)")
} else {
    print ("Unknown user")
}

let price = 12.0
let label = price > 10 ? "Premium" : "Regular"
print(label)

var group = 7
var hasChildren = true

if group > 8  && hasChildren{
    print("Call manager")
    print("Offer kids menu")
} else if group > 8  && !hasChildren {
    print("Call manager")
} else if group < 8  && hasChildren{
    print("Offer kids menu")
} else {
    print("Offer standard seating")
}

let isVip = true
let status = isVip ? "VIP" : "Standard"
print(status)
