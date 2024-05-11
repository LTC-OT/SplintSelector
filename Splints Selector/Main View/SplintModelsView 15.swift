//
//  SplintModelsView.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2021-02-16.
//

import SwiftUI

struct SplintModelsView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 4) {
              // 1st Column
              VStack(alignment: .leading, spacing: 4) {
                HStack() {
                  Image("pic4")
                    .resizable()
                    .modifier(IconModifier())
                  Spacer()
                  Text("Abductor Splint")
                }
                Divider()
                HStack() {
                  Image("pic8")
                    .resizable()
                    .modifier(IconModifier())
                  Spacer()
                  Text("Dynamic Splint")
                }
                Divider()
                HStack() {
                  Image("pic9")
                    .resizable()
                    .modifier(IconModifier())
                  Spacer()
                  Text("Static Splint")
                }
                Divider()
                HStack() {
                  Image("pic11")
                    .resizable()
                    .modifier(IconModifier())
                  Spacer()
                  Text("Dorsal Splint")
                }
              }
              
              // 2nd Column
              VStack(alignment: .center, spacing: 16) {
                HStack {
                  Divider()
                }
                
                Image(systemName: "heart.circle")
                  .font(Font.title.weight(.ultraLight))
                  .imageScale(.large)
                
                HStack {
                  Divider()
                }
              }
              
              // 3rd Column
              VStack(alignment: .trailing, spacing: 4) {
                HStack() {
                  Text("Elbow Splint")
                  Spacer()
                  Image("pic12")
                    .resizable()
                    .modifier(IconModifier())
                }
                Divider()
                HStack() {
                  Text("Shoulder Splint")
                  Spacer()
                  Image("pic13")
                    .resizable()
                    .modifier(IconModifier())
                }
                Divider()
                HStack() {
                  Text("Resting Splint")
                  Spacer()
                  Image("pic15")
                    .resizable()
                    .modifier(IconModifier())
                }
                Divider()
                HStack() {
                  Text("Cock-up Splint")
                  Spacer()
                  Image("pic16")
                    .resizable()
                    .modifier(IconModifier())
                }
              }
            }
            .font(.system(.callout, design: .serif))
            .foregroundColor(Color.gray)
            .padding(.horizontal)
            .frame(maxHeight: 220)
          }
        }

        struct IconModifier: ViewModifier {
          func body(content: Content) -> some View {
            content
              .frame(width: 42, height: 42, alignment: .center)
          }
        }

struct SplintModelsView_Previews: PreviewProvider {
    static var previews: some View {
        SplintModelsView()
            .previewLayout(.fixed(width: 414, height: 280))
        
    }
}
