//
//  FeatureCardView.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2021-02-19.
//

import SwiftUI

struct FeatureCardView: View {
    // MARK: - PROPERTIES
    
    var feature: Feature
    
    var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    @State private var showModal: Bool = false
    
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            // CARD IMAGE
           VStack {
              Image(feature.image)
                 .resizable()
                 .scaledToFit()
                 .frame(width: 130, height: 130, alignment: .center)
                 .clipShape(Circle())
                 .background(
                  Circle()
                     .fill(Color.white)
                     .frame(width: 135, height: 135, alignment: .center)
                 )
                 .background(
                  Circle()
                     .fill(LinearGradient(gradient: Gradient(colors: [Color("ColorGreenMedium"), Color("ColorGreenLight")]), startPoint: .trailing, endPoint: .leading))
                     .frame(width: 145, height: 145, alignment: .center)
                 )
                 .background(
                  Circle()
                     .fill(Color("ColorAppearanceAdaptive"))
                     .frame(width: 150, height: 150, alignment: .center)
                 )
           }
                .padding()
            
            VStack(alignment: .leading, spacing: 12) {
                // TITLE
                Text(feature.title)
                    .font(.headline)
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenMedium"))
                
                
                // HEADLINE
                Text(feature.headline)
                    .font(.subheadline)
                    .font(.system(.body, design: .serif))
                    .foregroundColor(Color("ColorGreenMedium"))
                
                FeatureBuildingView(feature: feature)
            }
            .frame(width: 260, height: 110, alignment: .center)
            .padding()
            .padding(.bottom, 12)
            
        }
        .background(Color(#colorLiteral(red: 0, green: 1, blue: 0, alpha: 0.1)))
        .cornerRadius(10)
        
        .shadow(color: Color("ColorBlackTransparentLight"), radius: 3, x: 1, y: 1)
        .onTapGesture {
            self.hapticImpact.impactOccurred()
            self.showModal = true
        }
        .sheet(isPresented: self.$showModal) {
            FeatureDetailView(feature: self.feature)
        }
    }
}

struct FeatureCardView_Previews: PreviewProvider {
    static var previews: some View {
        FeatureCardView(feature: featureData[6])
            .previewLayout(.sizeThatFits)
           
        
    }
}
