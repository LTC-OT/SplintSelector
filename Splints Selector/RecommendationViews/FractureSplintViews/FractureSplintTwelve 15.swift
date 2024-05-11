//
//  FractureSplintTwelve.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-03-27.
//

import SwiftUI

struct FractureSplintTwelve: View {
    
    @ObservedObject  var client = FractureClient()
    
    var body: some View {
        
        VStack {
            VStack (alignment: .center, spacing: 20){
            Image("Posterior knee splint")
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .frame(width: 300, height: 300, alignment: .center)
            Text("Posterior knee splint")
                    .font(.title)
                    .frame(width: 300, height: 50, alignment: .center)
                    
            }
           
        
            VStack(alignment: .center, spacing:  30) {
                Text("If acute soft tissue and bony injuries of the lower extremity then : ")
                    
                Text("Consider to provide a Posterior knee splint")
                    

            }.frame(width: 350, height: 250, alignment: .center)
        }
        .padding(.bottom, 30)
    }
}

struct FractureSplintTwelve_Previews: PreviewProvider {
    static var previews: some View {
        FractureSplintTwelve()
    }
}
