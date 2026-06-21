import SwiftUI

struct MenuListView: View {
    let menuCategories = [
        "Breakfast": [
            ["name": "Pancakes", "price": "8", "image": "pancakes"],
            ["name": "Omelette", "price": "7", "image": "omelette"]
        ],
        "Main Courses": [
            ["name": "Pizza", "price": "12", "image": "pizza"],
            ["name": "Pasta", "price": "10", "image": "pasta"],
            ["name": "Salad", "price": "8", "image": "salad"]
        ],
        "Desserts": [
            ["name": "Cake", "price": "6", "image": "cake"],
            ["name": "Ice Cream", "price": "5", "image": "icecream"]
        ],
        "Drinks": [
            ["name": "Coffee", "price": "3", "image": "coffee"],
            ["name": "Juice", "price": "4", "image": "juice"]
        ]
    ]

    var body: some View {
        List {
            ForEach(menuCategories.keys.sorted(), id: \.self) { category in
                Section(header: Text(category)) {
                    ForEach(menuCategories[category] ?? [], id: \.self) { dish in
                        HStack {
                            Image(dish["image"] ?? "unknown")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30, height: 30)

                            Text(dish["name"] ?? "")

                            Spacer()

                            Text("$\(dish["price"] ?? "")")
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    MenuListView()
}
