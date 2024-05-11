//
//  FractureSplintSix.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-03-27.
//

import SwiftUI

struct FractureSplintSix: View {
    @ObservedObject  var client = FractureClient()
    
    var body: some View {
        
        VStack {
            VStack (alignment: .center, spacing: 20){
            Image("Buddy Taping")
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .frame(width: 300, height: 300, alignment: .center)
            Text("Buddy taping")
                    .font(.title)
                    .frame(width: 300, height: 50, alignment: .center)
                    
            }
         
        
            VStack(alignment: .center, spacing:  30) {
                Text("If a Non-displaced proximal/middle phalangeal shaft fracture and sprains then : ")
                
                Text("Consider to provide a Buddy taping")
                    

            }.frame(width: 350, height: 250, alignment: .center)
        }
        .padding(.bottom, 30)
    }
}

struct FractureSplintSix_Previews: PreviewProvider {
    static var previews: some View {
        FractureSplintSix()
    }
}
