//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Ouimin Lee on 7/1/24.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        //        List {
        //                LandmarkRow(landmark: landmarks[0])
        //                LandmarkRow(landmark: landmarks[1])
        //        }
        NavigationSplitView{
            List(landmarks) {
                landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    LandmarkList()
}
