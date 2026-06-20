//
//  BillCalculator.swift
//  helllo world
//
//  Created by Rafael Cabrera on 6/13/26.
//

import SwiftUI

struct BillCalculator: View {
    
    let restaurantName = "Lemon Restaurant"
    let maxAdults = 10
    let maxChild = 5
    let adultPrice: Double = 15.00
    let childPrice: Double = 8.00
    let taxRate: Double = 0.08
    let groupDiscount = 10
    let discountRate = 0.10

    @State private var adultCount = 1
    @State private var childCount = 0

    var isEligible: Bool {
        (adultCount + childCount) > 10
    }
    
    var totalPeople: Int {
        adultCount + childCount
    }
    
    var subtotal: Double {
        Double(adultCount) * adultPrice + Double(childCount) * childPrice
    }
    
    var discount: Double {
        isEligible ? subtotal * discountRate : 0
    }
    
    var tax: Double {
        (subtotal - discount) * taxRate
    }
    
    var total: Double {
        subtotal - discount + tax
    }
    
    var body: some View {
        Form {
            Section {
                HStack {
                    Image(systemName: "dollarsign.circle.fill")
                        .foregroundColor(.green)
                        .font(.title2)
                    VStack(alignment: .leading) {
                        Text(restaurantName)
                            .font(.title3)
                            .bold()
                        Text("Bill Calculator")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                }
            }
            Section(header: Text("Your group")) {
                Stepper("Adults: \(adultCount)",
                        value: $adultCount,
                        in: 1...maxAdults)
                Stepper("Children: \(childCount)",
                        value: $childCount,
                        in: 0...maxChild)
                if isEligible {
                    Text("Congrats! your group is eligible to a discount.")
                        .foregroundColor(.green)
                }
            }
            Section(header: Text("Breakdown Prices")) {
                HStack {
                    Text("Subtotal")
                    Spacer()
                    Text("$\(String(format: "%.2f", subtotal))")
                }
                if isEligible {
                    HStack {
                        Text("Discount")
                            .foregroundColor(.green)
                        Spacer()
                        Text("-$\(String(format: "%.2f", discount))")
                    }
                }
                HStack {
                    Text("Taxes")
                        .foregroundColor(.red)
                    Spacer()
                    Text("$\(String(format: "%.2f", tax))")
                }
                Divider()
                HStack {
                    Text("Total")
                        .bold()
                    Spacer()
                    Text("$\(String(format: "%.2f", total))")
                        .bold()
                }
            }
            Section(header: Text("Per Person")) {
                HStack {
                    Text("People")
                    Spacer()
                    Text("\(totalPeople)")
                }
                HStack {
                    Text("Per Person")
                    Spacer()
                    Text("$\(String(format: "%.2f", totalPeople > 0 ? total / Double(totalPeople) : 0))")
                }
            }
        }
    }
}

#Preview {
    BillCalculator()
}
