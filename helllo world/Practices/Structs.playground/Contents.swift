import UIKit

/*
 
Custom data type that lets you group related values and behaviours together.
Struct is like a blueprint, struct defines the plan.
 Struct defines the shape of the data, instances bring it to life.
 
 It can contain:
    - Properties
    - Methods
    - Computed properties
 
 struct structName {
 
    var/let propertyName1: ElementType,
    var/let propertyName2: ElementType,
 
    func functionName() {
        //body
    }
 
 }
 
*/

struct MenuItem {
    var name: String
    var price: Double
    var imageName: String
}

let pizza = MenuItem(name: "Pizza", price: 15.00, imageName: "pizza.png")

print (pizza)
print (pizza.name)
print (pizza.price)
print (pizza.imageName)

let teriyaki = MenuItem(name: "Teriyaki", price: 9.99, imageName: "teriyaki.png")

print (teriyaki)
print (teriyaki.name)
print (teriyaki.price)
print (teriyaki.imageName)

struct Customer {
    let name: String
    var age: Int
    let email: String
    var visits: Int
    
    func loyaltyStatus() {
        print(visits >= 10 ? "\(name) is a loyal customer ⭐️" : "\(name)  is a regular customer ❌")
    }
}

let angela = Customer(name: "Angela", age: 26, email: "angela@mail.com", visits: 1)

let jim = Customer(name: "Jim jr", age: 31, email: "jimmy@mail.com", visits: 1)

let michael = Customer(name: "Michael", age: 65, email: "michael@mail.com", visits: 9)

let sonia = Customer(name: "Sonia", age: 27, email: "sonia@mail.com", visits: 39)

let jeffrey = Customer(name: "Jeffrey", age: 65, email: "jeffrey@mail.com", visits: 13)

var clients = [angela, jim, michael, sonia, jeffrey]

clients.forEach { client in
    client.loyaltyStatus()
}

struct Book {
    let title: String
    let author: String
    var pages: Int
    
    func printDetails() {
        print("""
              The book's name is \(title).
              It was created by \(author)
              and it contains \(pages) pages \n
              """
            )
    }
}

let swiftBook = Book(
    title: "Coding with Swift",
    author: "Bruce Wayne",
    pages: 255
)

let vueBook = Book(
    title: "Learning Vue.js",
    author: "Peter Parker",
    pages: 173
)

let theHungerGames = Book(
    title: "The Hunger Games",
    author: "Suzanne Collins",
    pages: 374
)

var books = [swiftBook, vueBook, theHungerGames]

books.forEach { book in
    print("""
          The book's name is \(book.title).
          It was created by \(book.author)
          and it contains \(book.pages) pages \n
          """
        )
}

books.forEach { book in
    book.printDetails()
}


