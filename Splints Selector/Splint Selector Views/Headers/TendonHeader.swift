//
//  TendonHeader.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-05-01.
//

import SwiftUI

struct TendonHeader: View {
    @State var showSheet: Bool = false
    var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    @State private var isAnimated: Bool = false
    
    var body: some View {

        
        VStack(alignment: .center, spacing: 30) {
            // CARD IMAGE
           VStack {
               Image(.tendonpic)
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
                   Text("Tendon")
                     .font(.title)
                     .font(.system(.title, design: .serif))
                     .foregroundColor(Color("ColorGreenMedium"))
                     .fontWeight(.bold)

                   Text("(Tap)")
                       .foregroundColor(.accentColor)
               }
              // HEADLINE
              Text("The user would select the location and type of the tendon injury, and the app would provide a recommendation for the appropriate type of splint or brace to manage the injury. This personalized approach to managing tendon injuries can help to promote healing, reduce pain and inflammation, and improve outcomes for patients.")
                   .multilineTextAlignment(.leading)
                 .font(.subheadline)
                 .foregroundColor(Color("ColorGreenMedium"))
     
           }
           .foregroundColor(.secondary)

            VStack (alignment: .leading){
                InfoDirec3()
            }
          
            .foregroundColor(.blue)
        
           
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
            TendonSelector()
        }
        
    }
}

#Preview {
        TendonHeader()
    }

