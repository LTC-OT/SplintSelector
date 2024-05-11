//
//  FeatureBuildingView.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2021-02-19.
//

import SwiftUI

struct FeatureBuildingView: View {
    // MARK: - PROPERTIES
    
    var feature: Feature
    
    var body: some View {
        HStack(alignment: .center, spacing: 12) {
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "person.2")
                Text("Price: \(feature.price)")
            }
        }
        .font(.footnote)
        .foregroundColor(Color("ColorGreenMedium"))
    }
}

#Preview {
        FeatureBuildingView(feature: featureData[0])
            .previewLayout(.fixed(width: 320, height: 60))
            
        
    }

