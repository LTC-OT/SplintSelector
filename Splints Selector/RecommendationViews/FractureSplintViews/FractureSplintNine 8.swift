//
//  FractureSplintNine.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-03-27.
//

import SwiftUI

struct FractureSplintNine: View {
    
    @ObservedObject  var client = FractureClient()
    
    var body: some View {
        
        VStack {
            VStack (alignment: .center, spacing: 20){
            Image("Short arm cast")
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .frame(width: 300, height: 300, alignment: .center)
            Text("Short arm cast")
                    .font(.title)
                    .frame(width: 300, height: 50, alignment: .center)
                    
            }
        
        
            VStack(alignment: .center, spacing:  30) {
                Text("If a Non displaced, minimally displaced, or buckle fractures of the distal radiusCarpal bone fractures other than scaphoid/trapezium then : ")
                    
                Text("Consider to provide a Short arm cast")
                    

            }.frame(width: 350, height: 250, alignment: .center)
        }
        .padding(.bottom, 30)
    }
}

struct FractureSplintNine_Previews: PreviewProvider {
    static var previews: some View {
        FractureSplintNine()
    }
}
