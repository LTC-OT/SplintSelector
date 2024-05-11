//
//  ContentView.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2021-02-14.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    var headers: [Header] = headersData
    var facts: [Fact] = factsData
    var feature: [Feature] = featureData
    
    var body: some View {
        ZStack {
            Circle()
                   .foregroundColor(Color("ColorGreenMedium")).opacity(0.1)
                   .frame(width: 600, height: 600)
                   .offset(x:150, y: -450)
               Circle()
                      .foregroundColor(Color("ColorGreenMedium")).opacity(0.2)
                      .frame(width: 300, height: 300)
                      .offset(x:-90, y: 450)
               Circle()
                      .foregroundColor(Color("ColorGreenMedium")).opacity(0.3)
                      .frame(width: 200, height: 200)
                      .offset(x:-210, y: 290)
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                // MARK: - HEADER
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 0) {
                        ForEach(headers) { item in
                            HeaderView(header: item)
                        }
                    }
                }
                
                // MARK: - DISHES
                
                Text("Types of Splints")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                
               SplintModelsView()
                    .frame(maxWidth: 640)
                
                // MARK: - SPLINTS FACTS
                
                Text("Splints Facts")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 60) {
                        ForEach(facts) { item in
                            FactsView(fact: item)
                        }
                    }
                    .padding(.vertical)
                    .padding(.leading, 60)
                    .padding(.trailing, 20)
                    .scrollTargetLayout()
                }
                .scrollClipDisabled()
                .scrollTargetBehavior(.viewAligned)
                
                //MARK FEATURECARD
                
                Text("Average Prices")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .center, spacing: 20) {
                        ForEach(feature){ item in
                            FeatureCardView(feature: item)
                        }
                    }
                    .scrollTargetLayout()
                }
                .frame( maxWidth: 640)
                .padding(.horizontal)
                .scrollClipDisabled()
                .scrollTargetBehavior(.viewAligned)
                
                // MARK: - FOOTER
                
                VStack(alignment: .center, spacing: 20) {
                    
                    Text("All About Splints")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    Text("Everything you wanted to know about splints but were too afraid to ask.")
                        .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.gray)
                        .frame(minHeight: 60)
                }
                
                .frame(maxWidth: 240)
                .padding()
                .padding(.bottom, 85)
            }
        }.padding(.horizontal, 120)
        }
        .edgesIgnoringSafeArea(.all)
        .padding(0)
    }
}

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(.title, design: .serif))
            .foregroundColor(Color("ColorGreenAdaptive"))
            .padding(8)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(headers: headersData, facts: factsData, feature: featureData)
        
        
    }
}
