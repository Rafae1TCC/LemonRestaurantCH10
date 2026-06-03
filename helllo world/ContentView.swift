//
//  ContentView.swift
//  helllo world
//
//  Created by Rafael Cabrera on 6/2/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.red)
            Text("Cohort 10")
            Text("Cohort 10")
            Text("Welcome")
                .font(.caption)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
