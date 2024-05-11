//
//  FractureSplintFourteen.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-03-27.
//

import SwiftUI

struct FractureSplintFourteen: View {
    
    @ObservedObject  var client = FractureClient()
    
    var body: some View {
        
        VStack {
            VStack (alignment: .center, spacing: 20){
            Image("Posterior Ankle Splint")
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .frame(width: 300, height: 300, alignment: .center)
            Text("Posterior Ankle Splint")
                    .font(.title)
                    .frame(width: 300, height: 50, alignment: .center)
                    
            }
        
        
            VStack(alignment: .center, spacing:  30) {
                Text("If isolated, non displaced malleolar fractures or acute foot fractures then : ")
                    
                Text("Consider to provide a Posterior Ankle Splint")
                    

            }.frame(width: 350, height: 250, alignment: .center)
        }
        .padding(.bottom, 30)
    }
}

struct FractureSplintFourteen_Previews: PreviewProvider {
    static var previews: some View {
        FractureSplintFourteen()
    }
}
