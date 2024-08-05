//
//  ContentView.swift
//  Landmarks
//
//  Created by Ouimin Lee on 6/24/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
