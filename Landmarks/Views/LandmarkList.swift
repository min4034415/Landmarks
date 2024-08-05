//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Ouimin Lee on 7/1/24.
//

import SwiftUI

struct LandmarkList: View {
    @Environment(ModelData.self) var modelData
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter{
            landmark in (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    var body: some View {
        //        List {
        //                LandmarkRow(landmark: landmarks[0])
        //                LandmarkRow(landmark: landmarks[1])
        //        }
        NavigationSplitView{
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
            
            ForEach(filteredLandmarks) {
                landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            }
            .animation(.default, value: filteredLandmarks)
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    LandmarkList()
        .environment(ModelData())
}
