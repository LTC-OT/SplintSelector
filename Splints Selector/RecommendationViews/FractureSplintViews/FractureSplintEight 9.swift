//
//  FractureSplintEight.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-03-27.
//

import SwiftUI

struct FractureSplintEight: View {
    @ObservedObject  var client = FractureClient()
    
    var body: some View {
        
        VStack {
            VStack (alignment: .center, spacing: 20){
            Image("Dorsal Blocking Splint")
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .frame(width: 300, height: 300, alignment: .center)
            Text("Dorsal Blocking Splint")
                    .font(.title)
                    .frame(width: 300, height: 50, alignment: .center)
                    
            }
          
        
            VStack(alignment: .center, spacing:  30) {
                Text("If a middle phalangeal volar plate avulsions and stable reduced PIP joint dislocations then : ")
               
                    
                Text("Consider to provide a Dorsal Blocking Splint")
                    

            }.frame(width: 350, height: 250, alignment: .center)
        }
        .padding(.bottom, 30)
    }
}

struct FractureSplintEight_Previews: PreviewProvider {
    static var previews: some View {
        FractureSplintEight()
    }
}
