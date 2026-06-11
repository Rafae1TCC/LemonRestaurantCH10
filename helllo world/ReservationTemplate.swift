//
//  ReservationTemplate.swift
//  helllo world
//
//  Created by Rafael Cabrera on 6/4/26.
//

import SwiftUI

struct ReservationTemplate: View {
    let restaurantName = "Little Lemon"
    let maxGuests = 10
    let maxChild = 5
    
    @State private var userName = ""
    @State private var occasion = ""
    @State private var phoneNumber = ""
    @State private var guestCount = 1
    @State private var childCount = 0
    @State private var previewText = ""
    @State private var notes = ""
    @State private var showMessage = false
    
    var nameFieldColor: Color {
        if userName.isEmpty{
            return .red
        } else if userName.count < 3{
            return .orange
        } else {
            return .primary
        }
    }
    
    var reservationStatus: String {
        if userName.isEmpty && (phoneNumber.count < 10 || phoneNumber.count > 10) {
            return "Fill in your name and phone number to continue"
        } else if userName.isEmpty {
            return "Fill in your name to continue"
        } else if phoneNumber.count < 10 || phoneNumber.count > 10 {
            return "Fill in your phone number to continue"
        } else {
            return "Ready to preview"
        }
    }
    
    var body: some View {
        Form{
            //Header
            Section{
                HStack{
                    Image(systemName: "fork.knife")
                        .foregroundColor(.orange)
                        .font(.title2)
                    VStack(alignment: .leading){
                        Text(restaurantName)
                            .font(.title3)
                            .bold()
                        Text("Reservation Form")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                    
                }
            }
            //Reservation Details
            Section(header: Text("Reservation Details")){
                TextField("Name",text:$userName)
                    .textInputAutocapitalization(.words)
                    .autocorrectionDisabled(true)
                    .padding(8)
                    .background(nameFieldColor.opacity(0.05))
                    .cornerRadius(8)
                    .overlay(RoundedRectangle(cornerRadius: 8).stroke(nameFieldColor,lineWidth:0.5))
                
                
                if userName.isEmpty{
                    Text("Please enter a name")
                        .font(.footnote)
                        .foregroundColor(.red)
                }
                TextField("Occasion",text:$occasion)
                    .textInputAutocapitalization(.words)
                    .autocorrectionDisabled(true)
                Stepper("Adults: \(guestCount)",
                        value: $guestCount,
                        in: 1...maxGuests)
                
                if (guestCount + childCount) > 8 {
                    Text("For groups larger than 8 (including children) we'll do our best to accomodate you properly")
                        .font(.footnote)
                        .foregroundColor(.orange)
                }
            }
            Section(header: Text("Optional")){
                Stepper("Children: \(childCount)",
                        value: $childCount,
                        in: 0...maxChild)
                if childCount > 0 {
                    Text("Kids menu is available")
                        .font(.footnote)
                }
                
                Toggle("Show a special text", isOn: $showMessage)
                if showMessage {
                    Text("Discount %")
                        .foregroundColor(.green)
                }
                TextField("Notes",text:$notes)
                    .textInputAutocapitalization(.words)
                    .autocorrectionDisabled(true)
            }
            
            //Contact Information
            Section(header: Text("Contact Information")){
                TextField("Phone Number",text:$phoneNumber)
                    .keyboardType(.numberPad)
                if phoneNumber.isEmpty {
                    Text("Please enter a phone number")
                        .font(.footnote)
                        .foregroundColor(.red)
                } else if phoneNumber.count < 10 || phoneNumber.count > 10 {
                    Text("Please enter a valid phone number")
                        .font(.footnote)
                        .foregroundColor(.red)
                } else {
                    Text("Looks good")
                        .font(.footnote)
                        .foregroundColor(.green)
                }
            }
            //Actions
            Section{
                Text(reservationStatus)
                    .font(.footnote)
                    .foregroundColor(userName.isEmpty || phoneNumber.count < 10 ? .orange: .green)
                
            }
            Section(header: Text("Actions")){
                Button("Preview reservation"){
                    previewText =
                        """
                        Name:       \(userName)
                        Guests:    #\(guestCount)
                        Children:  #\(childCount)
                        Phone:      \(phoneNumber)
                        Notes:      \(notes)
                        """
                }.disabled(userName.isEmpty)
            }
            //Preview
            Section(header: Text("Preview")){
                Text(previewText.isEmpty ? "No Information Yet" : previewText)
                    .font(.footnote)
                    .foregroundColor(.secondary)
                    .padding(.vertical, 20)
                    .textSelection(.enabled)
                
            }
            .navigationTitle("Reservation")
        }
    }
}

#Preview {
    NavigationStack{
        ReservationTemplate()
    }
}
