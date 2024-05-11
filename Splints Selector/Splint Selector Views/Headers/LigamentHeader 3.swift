//
//  LigamentHeader.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-05-01.
//

import SwiftUI

struct LigamentHeader: View {
    @State var showSheet: Bool = false
    var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    @State private var isAnimated: Bool = false
    var body: some View {

        
        VStack(alignment: .center, spacing: 0) {
            // CARD IMAGE
           VStack {
              Image("ligamentpic")
                 .resizable()
                 .clipShape(Circle())
                 .scaledToFill()
                 .scaleEffect(isAnimated ? 0.9 : 0.7)
           }
           .frame(maxWidth: .infinity)
           
           // TITLE
           VStack(alignment: .leading, spacing: 10) {
              Text("Splint Selector")
                 .font(.headline)
                 .font(.system(.body, design: .serif))

              
              
              
              // HEADLINE
               HStack {
                   Text("Ligament")
                     .font(.title)
                     .font(.system(.title, design: .serif))
                     .fontWeight(.bold)

                   Text("(Tap)")
                       .foregroundColor(.blue)
               }
              // HEADLINE
              Text("The user would select the location and type of the ligament injury, and the app would then recommend the appropriate type of splint or brace to manage the injury. This personalized approach to managing ligament injuries can help improve outcomes and reduce the risk of further injury.")
                 .multilineTextAlignment(.leading)
                 .font(.subheadline)
                 .fontWeight(.bold)
                 


           }
         
           .foregroundColor(.secondary)
           .padding()

            VStack (alignment: .leading){
                InfoDirect2()
            }
            .padding(.leading, 160)
            .foregroundColor(.blue)
            .padding(.bottom, 80)
           
        }
        .cornerRadius(20)
        .shadow(radius: 8, x: 3, y: 3)
        .onAppear{
            withAnimation(Animation.linear(duration: 2.0).repeatCount(1)){
                isAnimated.toggle()       }
        }
        .onTapGesture {
            self.hapticImpact.impactOccurred()
            self.showSheet = true
        }
        .sheet(isPresented: self.$showSheet) {
            LigamentSelector()
        }
        
    }
}

struct LigamentHeader_Previews: PreviewProvider {
    static var previews: some View {
        LigamentHeader()
    }
}
