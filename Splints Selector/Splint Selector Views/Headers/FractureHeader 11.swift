//
//  FractureHeader.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-05-01.
//

import SwiftUI

struct FractureHeader: View {
    @State var showSheet: Bool = false
    var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    @State private var isAnimated: Bool = false
    
    var body: some View {
        
       
            VStack(alignment: .center, spacing: 0) {
                // CARD IMAGE
                VStack {
                    Image("fracturepic")
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
                    //                 .padding()
                    
                    
                    
                    // HEADLINE
                    HStack {
                        Text("Fracture")
                            .font(.title)
                            .font(.system(.title, design: .serif))
                            .fontWeight(.bold)
                        //                 .padding()
                        Text("(Tap)")
                            .foregroundColor(.blue)
                    }
                    // HEADLINE
                    Text("After selecting the anatomical structure injured, the selector splint application will use its algorithm to determine the appropriate splint for managing that particular fracture. The app will then provide a recommendation for the specific type of splint to be used. The recommendation may include visual and textual guidance")
                        .multilineTextAlignment(.leading)
                        .font(.subheadline)
                        .fontWeight(.bold)
                    //                 .padding()
                    
                }
                .foregroundColor(.secondary)
                .padding()
                //           .padding(.top, 10)
                VStack (alignment: .leading){
                    InfoDirec1()
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
                FractureSelector()
            }
        
    
    }
}

struct FractureHeader_Previews: PreviewProvider {
    static var previews: some View {
        FractureHeader()
    }
}
