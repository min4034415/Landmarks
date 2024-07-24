//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Ouimin Lee on 6/25/24.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View{
        landmark.image
            .resizable()
            .frame(width: 50, height: 50)
        Text(landmark.name)
        
        Spacer()
        
        if landmark.isFavorite {
            Image(systemName: "star.fill")
                .foregroundColor(.yellow)
        }
    }
}


#Preview("Salmon") {
    Group {
        LandmarkRow(landmark: landmarks[0])
        LandmarkRow(landmark: landmarks[1])
    }
}
