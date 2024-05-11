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
      //var facts: [Fact] = factsData
     // var recipes: [Recipe] = recipesData
      
      var body: some View {
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
            
            .frame(maxWidth: 640)
            .padding()
            .padding(.bottom, 85)
          }
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
        ContentView(headers: headersData)
              .previewDevice("iPhon 11")
        
          }
        }
