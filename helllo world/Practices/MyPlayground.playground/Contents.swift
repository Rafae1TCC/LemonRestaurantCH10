import UIKit

let studentInformation = [
    "firstName": "Rafael",
    "lastName": "Cabrera",
    "cohort": "10",
    "email": "rafael.cabrera@sdgku.edu"
]

print(studentInformation)
print(studentInformation["firstName"]!)


for (key, value) in studentInformation {
    print("\(key): \(value)")
}

studentInformation.forEach { key, value in
    print("\(key): \(value)")
}


let courseInformation = [
    "courseName": "iOS Development",
    "courseCode": "MDI102",
    "schedule": "Mon-Thu 5PM"
]

for (key,value) in courseInformation {
    print("\(key): \(value)")
}

courseInformation.forEach{key, value in
    print("\(key): \(value)")
}

var servingsAvailable = [
    "Pizza": 12,
    "Pasta": 7,
    "Salad": 8
]

print("Servings Available: \(servingsAvailable)")
servingsAvailable["Soup"] = 4
print("Servings Available: \(servingsAvailable)")
servingsAvailable["Pizza"] = 10
print("Servings Available: \(servingsAvailable)")
servingsAvailable["Soup"] = nil
print("Servings Available: \(servingsAvailable)")

print("Today we have \(servingsAvailable.count) dishes in stock")

print(servingsAvailable.keys)
print(servingsAvailable.values)

print(servingsAvailable.removeAll())

var dishPrices = [
    "Pizza": 12.99,
    "Pasta": 10.50,
    "Salad": 6.99
]

print(dishPrices)
print(dishPrices["Pasta"]!)

print(type(of: "test"))

let availability = [
    "Pizza": true,
    "Pasta": false,
    "Salad": true
]

print(availability)

availability.forEach{key, value in
    print("\(key): \(value ? "Available" : "Sold Out")")
}


var ingredients = [
    "Tomato": 888,
    "Cheese": 16,
    "Garlic": 6,
    "Potato": 12,
    "Mushroom": 10,
    "Spinach": 2
]

ingredients["Onion"] = 8
ingredients["Carrots"] = 24
ingredients["Lettuce"] = 12
ingredients["Spinach", default: 0] += 3

ingredients["Tomato"] = 88
ingredients["Cheese"] = nil

print("----- Inventory for today -----")

ingredients.forEach{key, value in
    print("\(key): \(value)")
    
}



