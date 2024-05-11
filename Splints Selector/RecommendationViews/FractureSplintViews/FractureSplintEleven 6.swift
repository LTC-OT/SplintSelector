//
//  FractureSplintEleven.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-03-27.
//

import SwiftUI

struct FractureSplintEleven: View {
    
    @ObservedObject  var client = FractureClient()
    
    var body: some View {
        
        VStack {
            VStack (alignment: .center, spacing: 20){
            Image("Double Sugar-Tong Splint")
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .frame(width: 300, height: 300, alignment: .center)
            Text("Double Sugar-Tong Splint")
                    .font(.title)
                    .frame(width: 350, height: 50, alignment: .center)
                    
            }
           
        
            VStack(alignment: .center, spacing:  30) {
                Text("If an acute elbow and forearm fractures, and non displaced, extra-articular Colles fractures then : ")
              
                    
                Text("Consider to provide a Double Sugar-Tong Splint")
                    

            }.frame(width: 350, height: 250, alignment: .center)
        }
        .padding(.bottom, 30)
    }
}

struct FractureSplintEleven_Previews: PreviewProvider {
    static var previews: some View {
        FractureSplintEleven()
    }
}
