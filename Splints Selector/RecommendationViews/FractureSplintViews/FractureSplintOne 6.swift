//
//  FractureSplintOne.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-03-27.
//

import SwiftUI

struct FractureSplintOne: View {
    
    @ObservedObject  var client = FractureClient()
    
    var body: some View {
        
        
        VStack {
            
            VStack(alignment: .center, spacing: 20) {

                Image("Ulnar Gutter Splint")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 300, height: 300, alignment: .center)
                Text("Ulnar Gutter Splint")
                    .font(.title)
                    .frame(width: 300, height: 50, alignment: .center)
            }

            
            VStack (alignment: .center, spacing: 30){
                
                Text("If an injuriy to fourth and fifth proximal/middle phalangeal shaft fractures/ metacarpal fractures then : ")
                
                Text("Consider to provide a Ulnar Gutter-Splint")
                    
            }.frame(width: 350, height: 250, alignment: .center)
            
        }.padding(.bottom, 30)
    }
    
}

struct FractureSplintOne_Previews: PreviewProvider {
    static var previews: some View {
        FractureSplintOne()
    }
}
