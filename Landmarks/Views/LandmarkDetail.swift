//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Ouimin Lee on 7/2/24.
//

import SwiftUI

struct LandmarkDetail: View {
    var body: some View {
        NavigationSplitView {
            List(landmarks) { landmark in
                NavigationLink{
                    LandmarkDetail()
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks ")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    ContentView()
}
