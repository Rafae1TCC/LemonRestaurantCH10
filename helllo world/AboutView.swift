//
//  SwiftUIView.swift
//  helllo world
//
//  Created by Rafael Cabrera on 6/2/26.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        VStack{
            
            Text("About Little Lemon")
                .font(.title)
                .bold(true)
                .foregroundColor(.green)
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In aliquet, turpis non volutpat ullamcorper, dolor ipsum lobortis orci, nec sollicitudin leo odio quis magna.")
                .multilineTextAlignment(.center)
                .padding()
            HStack{
                Image(systemName: "fork.knife")
                    .imageScale(.large)
                    .foregroundColor(.gray)
                Image(systemName: "leaf")
                    .imageScale(.large)
                    .foregroundColor(.green)
                Image(systemName: "map")
                    .imageScale(.large)
                    .foregroundColor(.yellow)
            }
                
        }
    }
}

#Preview {
    SwiftUIView()
}
