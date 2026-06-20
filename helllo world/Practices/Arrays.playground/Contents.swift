import UIKit

print("--- ARRAYS ---")
print("\n-- Basic Array String --")
var cohort10 = ["Rafael", "Lemuel", "Michael", "Robert"]
print(cohort10)
print(cohort10[0])
print(cohort10[1])
print(cohort10[2])
print(cohort10[3])

var favDesserts = ["Ice Cream", "Brownies", "Cinnamon Rolls", "Carrot Cake"]

print (favDesserts)

print (favDesserts.count)

var numbers = [10, 20, 30, 40, 50]
print (numbers)

var dishes:[String] = ["Pizza", "Pasta", "Soup"]

print(dishes)
print(dishes[1])
print(dishes.count)

print("- Adding a new Dish -")

dishes.append("Salad")

print(dishes)

dishes.insert("Hot Dog", at: 1)

print(dishes)

dishes.remove(at: 3)

print(dishes)

for student in cohort10 {
    print("Hello \(student)!")
}

//for _ in 1...5 {
//    print("Hello")
//}

for char in "Hello"{
    print(char)
}
    

let calories = [50, 100, 150]

for calorie in calories {
    if calorie > 100 {
        print(calorie)
    }
}
