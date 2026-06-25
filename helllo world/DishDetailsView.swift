//
//  DishDetailsView.swift
//  helllo world
//
//  Created by Rafael Cabrera on 6/20/26.
//

import SwiftUI

struct Dish {
    var name: String
    var category: String
    var price: Double
    var description: String
    var imageName: String
}

struct DishDetailsView: View {
    let dish:Dish
    
    var body: some View {
        ScrollView{
            Image(dish.imageName)
                .resizable()
                .scaledToFill()
                .frame(maxWidth: .infinity, minHeight: 250, maxHeight: 250)
                .clipped()
            VStack(alignment: .leading){
                Text(dish.name)
                    .font(.title)
                    .bold()
                    .multilineTextAlignment(.leading)
                Text(dish.category)
                    .foregroundColor(.gray)
                    .textCase(.uppercase)
                    
                Text("$\(String(format: "%.2f", dish.price))")
                    .foregroundColor(.green)
                
                Text(dish.description)
                    .foregroundColor(.gray)
            }
            .padding()
        }
    }
}

#Preview {
    DishDetailsView(
        dish: Dish(
            name: "Greek Salad",
            category: "Salads",
            price: 8.99,
            description: "This is a greek salad... Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
            imageName: "greek-salad-image")
    )
}
