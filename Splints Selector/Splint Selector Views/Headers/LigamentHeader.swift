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

        
        VStack(alignment: .center, spacing: 30) {
            // CARD IMAGE
           VStack {
               Image(.ligamentpic)
                 .resizable()
                 .clipShape(Circle())
                 .scaledToFit()
                 .frame(width: 450)
                 .scaleEffect(isAnimated ? 1.0 : 0.5)
           }
      
           
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
                     .foregroundColor(Color("ColorGreenMedium"))
                     .fontWeight(.bold)

                   Text("(Tap)")
                       .foregroundColor(.accentColor)
               }
              // HEADLINE
              Text("The user would select the location and type of the ligament injury, and the app would then recommend the appropriate type of splint or brace to manage the injury. This personalized approach to managing ligament injuries can help improve outcomes and reduce the risk of further injury.")
                 .multilineTextAlignment(.leading)
                 .font(.subheadline)
                 .foregroundColor(Color("ColorGreenMedium"))


           }
         
           .foregroundColor(.accentColor)
      

            VStack (alignment: .leading){
                InfoDirect2()
            }
          
            .foregroundColor(.accentColor)
        
           
        }
        .padding()
        .background(.gray.opacity(0.1))
        .frame(width: 350)
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

#Preview {
        LigamentHeader()
    }

