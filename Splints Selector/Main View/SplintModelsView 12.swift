//
//  SplintModelsView.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2021-02-16.
//

import SwiftUI

struct SplintModelsView: View {
   var splints: [Splint] = splintData
  
   var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
   @State private var showModal: Bool = false
    var body: some View {
        
        
        HStack(alignment: .center, spacing: 4) {
            // 1st Column
            VStack(alignment: .leading, spacing: 4) {
                HStack() {
                    Image("pic4")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("For Fracture")
                }
                
                
                Divider()
                HStack() {
                    Image("pic8")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("For Laceration")
                }
                Divider()
                HStack() {
                    Image("pic9")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("For Sprain")
                }
                Divider()
                HStack() {
                    Image("pic11")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("For Nerve injury")
                }
            }
            
            // 2nd Column
            VStack(alignment: .center, spacing: 16) {
                HStack {
                    Divider()
                }
                
                Image(systemName: "heart.fill")
                    .font(Font.title.weight(.ultraLight))
                    .imageScale(.large)
               
                
                HStack {
                    Divider()
                }
            }
            
            // 3rd Column
            VStack(alignment: .trailing, spacing: 4) {
                HStack() {
                    Text("For Contracture")
                    Spacer()
                    Image("pic12")
                        .resizable()
                        .modifier(IconModifier())
                }
                Divider()
                HStack() {
                    Text("For pain ")
                    Spacer()
                    Image("pic13")
                        .resizable()
                        .modifier(IconModifier())
                }
                Divider()
                HStack() {
                    Text("For Spasticty")
                    Spacer()
                    Image("pic15")
                        .resizable()
                        .modifier(IconModifier())
                }
                Divider()
                HStack() {
                    Text("For tendon injury")
                    Spacer()
                    Image("pic16")
                        .resizable()
                        .modifier(IconModifier())
                    
                }
            }
        }
        .font(.subheadline)
        .foregroundColor(Color("ColorGreenMedium"))
        .padding(.horizontal)
        .frame(maxHeight: 220)
        
        .onTapGesture {
            self.hapticImpact.impactOccurred()
            self.showModal = true
        }
        .sheet(isPresented: self.$showModal) {
           TerminologyView()
        }
        
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
