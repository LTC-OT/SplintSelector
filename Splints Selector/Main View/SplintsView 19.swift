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
          Spacer()
          
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
            Text("""
    A splint is defined as "a rigid or flexible device that maintains in position a displaced or movable segment of the body; also used to keep in place and protect an injured area" or as "a rigid or flexible material used to protect, immobilize, or restrict motion of the muscle skeletal system " Splints are often made out of some kind of flexible material and a firm pole-like structure for stability. They often buckle or Velcro together.
    """)
              .lineLimit(nil)
              .font(.system(.headline, design: .serif))
              .foregroundColor(Color("ColorGreenLight"))
              .multilineTextAlignment(.center)
              .lineSpacing(8)
              .frame(maxWidth: 640, minHeight: 120)
                .padding()
          }
          .padding()
          
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
