//
//  FractureSplintFour.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-03-27.
//

import SwiftUI

struct FractureSplintFour: View {
    @ObservedObject  var client = FractureClient()
    
    var body: some View {
        
        VStack {
            VStack (alignment: .center, spacing: 20){
            Image("Mallet Finger Splint")
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .frame(width: 300, height: 300, alignment: .center)
            Text("Mallet Finger Splint")
                    .font(.title)
                    .frame(width: 300, height: 50, alignment: .center)
                    
            }
          
        
            VStack(alignment: .center, spacing: 30) {
                Text("If an injuriy to Extensor tendon avulsion from the base of the distal phalanx then : ")
               
                    
                Text("Consider to provide a Mallet Finger Splint")
                    

            }.frame(width: 350, height: 250, alignment: .center)
        }
        .padding(.bottom, 30)
    }
}

struct FractureSplintFour_Previews: PreviewProvider {
    static var previews: some View {
        FractureSplintFour()
    }
}
