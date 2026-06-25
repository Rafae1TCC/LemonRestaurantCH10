//
//  DishListView.swift
//  helllo world
//
//  Created by Rafael Cabrera on 6/23/26.
//

import SwiftUI

struct DishListView: View {
    
    var dishes:[Dish] = [
        Dish(
            name:"Pancake",
            category: "Breakfast",
            price: 6.99,
            description: "Lorem ipsum dolor sit amet consectetur, adipiscing elit aliquet egestas mauris sociis, hendrerit eget aliquam turpis. Varius maecenas faucibus mi interdum odio inceptos",
            imageName: "pancakes-image"
        ),
        Dish(
            name: "Greek Salad",
            category: "Salads",
            price: 11.99,
            description: "Lorem ipsum dolor sit amet consectetur, adipiscing elit aliquet egestas mauris sociis, hendrerit eget aliquam turpis. Varius maecenas faucibus mi interdum odio inceptos",
            imageName: "greek-salad-image"
        ),
        Dish(
            name: "Pizza",
            category: "Main Course",
            price: 12.00,
            description: "Lorem ipsum dolor sit amet consectetur, adipiscing elit aliquet egestas mauris sociis, hendrerit eget aliquam turpis. Varius maecenas faucibus mi interdum odio inceptos",
            imageName: "pizza-image"),
        Dish(
            name: "Pasta",
            category: "Main Course",
            price: 14.50,
            description: "Lorem ipsum dolor sit amet consectetur, adipiscing elit aliquet egestas mauris sociis, hendrerit eget aliquam turpis. Varius maecenas faucibus mi interdum odio inceptos",
            imageName: "pasta-image"),
        Dish(
            name: "Clubhouse Sandwich",
            category: "Main Course",
            price: 9.99,
            description: "Lorem ipsum dolor sit amet consectetur, adipiscing elit aliquet egestas mauris sociis, hendrerit eget aliquam turpis. Varius maecenas faucibus mi interdum odio inceptos",
            imageName: "clubhouse-sandwich-image"),
        Dish(
            name: "Ice Cream",
            category: "Dessert",
            price: 4.99,
            description: "Lorem ipsum dolor sit amet consectetur, adipiscing elit aliquet egestas mauris sociis, hendrerit eget aliquam turpis. Varius maecenas faucibus mi interdum odio inceptos",
            imageName: "ice-cream-image")

    ]
    
    var body: some View {
        NavigationView{
            List(dishes, id: \.name){ dish in
                NavigationLink(destination: DishDetailsView(dish: dish)){
                    Image(dish.imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 70, height: 70)
                        .cornerRadius(15)
                    VStack(alignment: .leading){
                        Text(dish.name)
                            .font(Font.body.weight(.semibold))
                        Text(dish.category)
                            .foregroundColor(.gray)
                        Text("$\(String(format: "%.2f", dish.price))")
                            .foregroundColor(.green)
                            .font(.footnote)
                    }
                }
            }
            .navigationTitle(Text("Menu"))
        }
    }
}

#Preview {
    DishListView()
}
