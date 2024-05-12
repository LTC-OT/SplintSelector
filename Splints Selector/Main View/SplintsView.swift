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
    var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    
    @State var showSheet: Bool = false
    
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
            
            ScrollView {
                VStack {
                    Spacer(minLength: 50)
                    Image(.splint)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 250, height: 250, alignment: .center)
                        .shadow(color: .gray, radius: 3, x: 5, y: 5)
                        .scaleEffect(self.pulsateAnimation ? 1 : 0.9)
                        .opacity(self.pulsateAnimation ? 1 : 0.9)
                        .animation(Animation.easeInOut(duration: 1.5).repeatForever(autoreverses: true),value: pulsateAnimation)
                        .onAppear(perform: {
                            self.pulsateAnimation.toggle()})
                    
                    
                    VStack {
                        Text("Splints App".uppercased())
                            .font(.system(size: 32, weight: .bold, design: .serif))
                            .foregroundColor(Color("ColorGreenMedium"))
                            .padding()
                            .shadow(color: .gray, radius: 2, x: 3, y: 3)
                        
                        VStack {
                            Text("""
                                 A splint is a piece of medical equipment used to immobilize an injured part of the body, protecting it from further damage.
                                 
                                 Used after a surgery, fracture or other injury or for chronic conditions, splints can be purchased off the shelf (prefabricated) or custom designed to fit you.
                                 """)
                        }
                        .font(.system(.subheadline , design: .serif))
                        
                        .foregroundColor(Color("ColorGreenMedium"))
                        .multilineTextAlignment(.leading)
                        .frame(maxWidth: 350, minHeight: 250)
                        .padding(.horizontal, 40)
                    }
                    VStack {
                        Text("Tap to Learn")
                        Text("about this App")
                    }
                    
                    .font(.system(.subheadline , design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenMedium"))
                    .shadow(color: .gray, radius: 2, x: 3, y: 3)
                    .padding(.bottom, 120)
                    .onTapGesture {
                        self.hapticImpact.impactOccurred()
                        self.showSheet = true
                    }
                    .sheet(isPresented: self.$showSheet) {
                        WelcomeHomeScreen()
                    }
                    
                }

            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
        SplintsView()
        
        
    }

