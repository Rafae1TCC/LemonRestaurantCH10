//
//  ContactInfoView.swift
//  helllo world
//
//  Created by Rafael Cabrera on 6/13/26.
//

import SwiftUI

struct ContactInfoView: View {
    var workingDays = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
    var desserts = ["Chocolate Cake", "Apple Pie", "Banana Split", "Crem Brule", "Red Velvet Brownie", "Lemon Cheese Cake", "Carrot Cake"]
    @State private var selectedDay: String = "Monday"

    let itemHeight: CGFloat = 50
    let spacing: CGFloat = 12

    var selectedIndex: Int {
        workingDays.firstIndex(of: selectedDay) ?? 0
    }

    var selectedDessert: String {
        desserts[selectedIndex]
    }

    var body: some View {
        VStack(spacing: 0) {
            Text("Weekly Desserts")
                .font(.title)
                .padding(.bottom, 16)

            ScrollView(.vertical) {
                LazyVStack(spacing: spacing) {
                    ForEach(workingDays, id: \.self) { day in
                        let isFocused = day == selectedDay
                        let dayIndex = workingDays.firstIndex(of: day) ?? 0
                        let distance = abs(dayIndex - selectedIndex)
                        let opacity: Double = distance == 0 ? 1.0 : distance == 1 ? 0.4 : 0.0

                        Text(day)
                            .font(isFocused ? .headline : .body)
                            .fontWeight(isFocused ? .bold : .regular)
                            .frame(maxWidth: .infinity)
                            .frame(height: itemHeight)
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(isFocused ? Color.blue : Color.blue.opacity(0.15))
                            )
                            .foregroundStyle(isFocused ? .white : .primary)
                            .scaleEffect(isFocused ? 1.15 : 1.0)
                            .opacity(opacity)
                            .animation(.easeOut(duration: 0.2), value: selectedDay)
                    }
                }
                .scrollTargetLayout()
                .padding(.horizontal, 32)
            }
            .frame(height: (itemHeight + spacing) * 3 - spacing)
            .scrollIndicators(.hidden)
            .scrollTargetBehavior(.viewAligned(limitBehavior: .always))
            .scrollPosition(id: Binding(
                get: { selectedDay },
                set: { if let day = $0 { selectedDay = day } }
            ))
            .contentMargins(.vertical, itemHeight + spacing)

            Text(selectedDessert)
                .font(.title2)
                .fontWeight(.semibold)
                .padding(.top, 24)
                .transition(.opacity)
                .id(selectedDessert)
                .animation(.easeOut(duration: 0.2), value: selectedDessert)
        }
        .toolbar(.hidden, for: .navigationBar)
    }
}

#Preview {
    ContactInfoView()
}
