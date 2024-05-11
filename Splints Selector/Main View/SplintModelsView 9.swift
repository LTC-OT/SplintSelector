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
                  Image("icon-spica")
                    .resizable()
                    .modifier(IconModifier())
                  Spacer()
                  Text("Spica Splint")
                }
                Divider()
                HStack() {
                  Image("icon-boot1")
                    .resizable()
                    .modifier(IconModifier())
                  Spacer()
                  Text("Function Boot")
                }
                Divider()
                HStack() {
                  Image("icon-finger")
                    .resizable()
                    .modifier(IconModifier())
                  Spacer()
                  Text("Finger Splint")
                }
                Divider()
                HStack() {
                  Image("icon-resting")
                    .resizable()
                    .modifier(IconModifier())
                  Spacer()
                  Text("Wrist Resting Splint")
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
                  Text("Shoulder Sling")
                  Spacer()
                  Image("icon-sling")
                    .resizable()
                    .modifier(IconModifier())
                }
                Divider()
                HStack() {
                  Text("Thumb Splint")
                  Spacer()
                  Image("icon-thumb")
                    .resizable()
                    .modifier(IconModifier())
                }
                Divider()
                HStack() {
                  Text("Function wrist")
                  Spacer()
                  Image("icon-wrist")
                    .resizable()
                    .modifier(IconModifier())
                }
                Divider()
                HStack() {
                  Text("Neopren Wrist Brace")
                  Spacer()
                  Image("icon-wristBrace")
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
