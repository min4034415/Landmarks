//
//  ContentView.swift
//  Landmarks
//
//  Created by Ouimin Lee on 6/24/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Turtle Rock")
                    .font(.title)
                .foregroundStyle(.green)
            HStack {
                Text("Joshua Tree National Park")
                    .font(.subheadline)
                Spacer()
                Text("California")
                    .font(.subheadline)
            }
        }
        .padding() 
    }
}

#Preview {
    ContentView()
}
