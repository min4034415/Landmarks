//
//  HikeView.swift
//  Landmarks
//
//  Created by Ouimin Lee on 8/13/24.
//

import SwiftUI

struct HikeView: View {
    var hike: Hike
    @State private var showDetail = false
    
    var body: some View {
        VStack {
            HStack {
                HikeGraph(hike: hike, path: \.elevation)
                    .frame(width: 50, height: 30)
                
                VStack(alignment: .leading) {
                    Text(hike.name)
                }
            }
        }
    }
}

#Preview {
    HikeView()
}
