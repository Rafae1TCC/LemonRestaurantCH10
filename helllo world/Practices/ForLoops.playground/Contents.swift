import UIKit

for num in stride(from: 15, to:0, by:-3) {
    print("Countdown: \(num)")
}

var row = ""
for tree in (1...5) {
        row += "🌲"
    print(row)
}

var day = "Sunday"
switch day {
    case "Monday":
        print("Weekday")
    case "Tuesday":
        print("Weekday")
    case "Wednesday":
        print("Weekday")
    case "Thursday":
        print("Weekday")
    case "Friday":
        print("Weekday")
    case "Saturday":
        print("Weekend!")
    case "Sunday":
        print("Weekend!")
    default:
        print("Invalid day")
}
