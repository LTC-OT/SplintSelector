//
//  FractureSplintSeven.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-03-27.
//

import SwiftUI

struct FractureSplintSeven: View {
    @ObservedObject  var client = FractureClient()
    
    var body: some View {
        
        VStack {
            VStack (alignment: .center, spacing: 20){
            Image("U Shaped Aluminum Splint")
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .frame(width: 300, height: 300, alignment: .center)
            Text("U Shaped Aluminum Splint")
                    .font(.title)
                    .frame(width: 350, height: 50, alignment: .center)
                    
            }
      
        
            VStack(alignment: .center, spacing:  30) {
                Text("If a distal phalangeal fracture then : ")
                
                    
                Text("Consider to provide an U Shaped Aluminum Splint")
                    

            }.frame(width: 350, height: 250, alignment: .center)
        }
        .padding(.bottom, 30)
    }
}

struct FractureSplintSeven_Previews: PreviewProvider {
    static var previews: some View {
        FractureSplintSeven()
    }
}
