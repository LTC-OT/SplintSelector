//
//  FractureSplintTwo.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-03-27.
//

import SwiftUI

struct FractureSplintTwo: View {
    @ObservedObject  var client = FractureClient()
    
    var body: some View {
        
        VStack {
            
            VStack(alignment: .center, spacing: 20) {
                Image("Radial Gutter-Splint")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 300, height: 300, alignment: .center)
                Text("Radial Gutter-Splint")
                    .font(.title)
                    .frame(width: 300, height: 50, alignment: .center)
            }

            
            VStack (alignment: .center, spacing: 30){
                    Text("If an injuriy to scaphoid/trapezium Non-displaced, non angulated/ extra-articular of first metacarpal fractures/ stable thumb fractures then : ")
                   
                    Text("Consider to provide a Radial Gutter-Splint")
                        

                }.frame(width: 350, height: 250, alignment: .center)
                
            }.padding(.bottom, 30)
        }
    }
    


struct FractureSplintTwo_Previews: PreviewProvider {
    static var previews: some View {
        FractureSplintTwo()
    }
}
