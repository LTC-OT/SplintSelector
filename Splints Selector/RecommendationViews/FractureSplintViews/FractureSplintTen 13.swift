//
//  FractureSplintTen.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-03-27.
//

import SwiftUI

struct FractureSplintTen: View {
    
    @ObservedObject  var client = FractureClient()
    
    var body: some View {
        
        VStack {
            VStack (alignment: .center, spacing: 20){
            Image("Long Arm Posterior Splint")
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .frame(width: 300, height: 300, alignment: .center)
            Text("Long Arm Posterior Splint")
                    .font(.title)
                    .frame(width: 350, height: 50, alignment: .center)
                    
            }
          
        
            VStack(alignment: .center, spacing: 30) {
                Text("If a Distal humeral and proximal/mid shaft forearm fractures Non buckle wrist fractures then : ")
              
                    
                Text("Consider to provide a Long Arm Posterior Splint")
                    

            }.frame(width: 350, height: 250, alignment: .center)
        }
        .padding(.bottom, 30)
    }
}

struct FractureSplintTen_Previews: PreviewProvider {
    static var previews: some View {
        FractureSplintTen()
    }
}
