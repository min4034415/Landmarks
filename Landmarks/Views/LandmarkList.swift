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
        List(landmarks, id: \.id) {
            landmark in
            LandmarkRow(landmark: landmark)
        }
    }
}

#Preview {
    LandmarkList()
}
