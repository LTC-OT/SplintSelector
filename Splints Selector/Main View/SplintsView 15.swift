//
//  SplintsView.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2021-02-14.
//

import SwiftUI

struct SplintsView: View {
    // MARK: - PROPERTIES
      
      @State private var pulsateAnimation: Bool = false
      
      var body: some View {
        VStack {
          Spacer(minLength: 50)
    
          
          Image("splint")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 240, height: 240, alignment: .center)
            .shadow(color: Color("ColorBlackTransparentDark"), radius: 12, x: 0, y: 8)
            .scaleEffect(self.pulsateAnimation ? 1 : 0.9)
            .opacity(self.pulsateAnimation ? 1 : 0.9)
            .animation(Animation.easeInOut(duration: 1.5).repeatForever(autoreverses: true))
          
          VStack {
            Text("Splints".uppercased())
              .font(.system(size: 42, weight: .bold, design: .serif))
              .foregroundColor(Color.white)
              .padding()
              .shadow(color: Color("ColorBlackTransparentDark"), radius: 4, x: 0, y: 4)
            ScrollView {
                Text("""
                A splint is a piece of medical equipment used to immobilize an injured part of the body, protecting it from further damage.
                Used after a surgery, fracture or other injury or for chronic conditions, splints can be purchased off the shelf (prefabricated) or custom designed to fit you.
                Splints can have parts made from neoprene, plastic, foam, metal or thermoplastic materials that can be heated, cut and molded to fit you.
        """)
                
                  .lineLimit(nil)
                  .font(.system(.headline, design: .serif))
                  .foregroundColor(Color("ColorGreenLight"))
                    .multilineTextAlignment(.leading)
                  .lineSpacing(5)
                  .frame(maxWidth: 640, minHeight: 120)
                    .padding()
            }
          }
          //.padding()
          
          Spacer()
        }
        .background(
          Image("background")
            .resizable()
            .aspectRatio(contentMode: .fill)
        )
          .edgesIgnoringSafeArea(.all)
          .onAppear(perform: {
            self.pulsateAnimation.toggle()
          })
      }
    }

struct SplintsView_Previews: PreviewProvider {
    static var previews: some View {
        SplintsView()
            .previewDevice("iPhone 11")
            .environment(\.colorScheme, .dark)
    }
}
