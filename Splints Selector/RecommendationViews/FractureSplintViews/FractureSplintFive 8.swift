//
//  FractureSplintFive.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-03-27.
//

import SwiftUI

struct FractureSplintFive: View {
    @ObservedObject  var client = FractureClient()
    
    var body: some View {
        
        VStack {
            VStack (alignment: .center, spacing: 20){
            Image("Volar dorsal forearm splint")
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .frame(width: 300, height: 300, alignment: .center)
            Text("Volar/dorsal forearm splint")
                    .font(.title)
                    .frame(width: 350, height: 50, alignment: .center)
                    
            }
           
        
            VStack(alignment: .center, spacing: 30) {
                Text("If an injuriy to Soft tissue to hand and wrist/carpal bone fractures then : ")
               
                    
                Text("Consider to provide a Volar/dorsal forearm splint")
                    

            }.frame(width: 350, height: 250, alignment: .center)
        }
        .padding(.bottom, 30)
    }
}

struct FractureSplintFive_Previews: PreviewProvider {
    static var previews: some View {
        FractureSplintFive()
    }
}
