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
                TextField("Occasion",text:$occasion)
                    .textInputAutocapitalization(.words)
                    .autocorrectionDisabled(true)
                Stepper("Guests: \(guestCount)",
                        value: $guestCount,
                        in: 1...maxGuests)
                Stepper("Children: \(childCount)",
                        value: $childCount,
                        in: 0...maxChild)
                TextField("Notes",text:$notes)
                    .textInputAutocapitalization(.words)
                    .autocorrectionDisabled(true)
            }
            //Contact Information
            Section(header: Text("Contact Information")){
                TextField("Phone Number",text:$phoneNumber)
                    .keyboardType(.numberPad)
            }
            //Actions
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
                }
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
