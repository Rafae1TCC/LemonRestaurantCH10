import UIKit

let greeting = "hello, world"

print(greeting.uppercased())
print(greeting.lowercased())
print(greeting.capitalized)

let spaced = "  Cohort 10   "

print(spaced.trimmingCharacters(in: .whitespaces))

let phrase = "Hello World"

print(phrase.replacingOccurrences(of: "World", with: "Cohort#10"))

let text = "Swift is fun"

print(text.contains("fun"))
print(text.hasPrefix("Swift"))
print(text.hasSuffix("fun"))

let letters = "abcdef"

print(letters.prefix(3))
print(letters.suffix(2))
print(letters.dropFirst())
print(letters.dropLast())

print("Hello".count)
print("".isEmpty)

let numberString = "123"

print(Int(numberString) ?? 0)

let piString = "3.14"

print(Double(piString) ?? 0.0)
