//
//  FeatureDetailView.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2021-02-21.
//

import SwiftUI

struct FeatureDetailView: View {
    
   var feature: Feature 
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false){
            
            VStack(alignment: .center, spacing: 5) {
                
                //IMAGE
                Image(feature.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 150, alignment: .center)
                    .clipShape(Circle())
                    .background(
                        Circle()
                            .fill(Color.white)
                            .frame(width: 235, height: 235, alignment: .center)
                    )
                    .background(
                        Circle()
                            .fill(LinearGradient(gradient: Gradient(colors: [Color("ColorGreenMedium"), Color("ColorGreenLight")]), startPoint: .trailing, endPoint: .leading))
                            .frame(width: 245, height: 245, alignment: .center)
                    )
                    .background(
                        Circle()
                            .fill(Color("ColorAppearanceAdaptive"))
                            .frame(width: 250, height: 250, alignment: .center)
                    )
                    .padding(.top, 150)
                
                Group {
                    //TITLE
                    Text(feature.title)
                        .font(.system(.largeTitle, design: .serif))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color("ColorGreenAdaptive"))
                        .padding(.top, 70)
                    
                    
                    //PRICE
                    FeatureBuildingView(feature: feature)
                    
                    //COMPONENTS
                    Text("Functionality")
                    
                    VStack(alignment: .leading, spacing:5) {
                        Text (feature.components)
                          .foregroundColor(Color("ColorGreenAdaptive"))
                    }
                }
              .padding(.horizontal, 24)
                .padding(.vertical, 5)
            }
        } .edgesIgnoringSafeArea(.top)
    }
}

struct FeatureDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FeatureDetailView(feature: featureData[9])
            .environment(\.colorScheme, .dark)
    }
}
