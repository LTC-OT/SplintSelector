//
//  FractureSplintFive.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-03-27.
//

import SwiftUI

struct FractureSplintFive: View {
    @State  var client = FractureClient()
    
    var body: some View {
        Form {
            Section {
                VStack (alignment: .center, spacing: 20){
                    Image(.volarDorsalForearmSplint)
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 300, height: 300, alignment: .center)
                    Text("Volar/dorsal forearm splint")
                        .font(.title)
                        .frame(width: 350, height: 50, alignment: .center)
                }
            }
            Section  {
                Text("If an injuriy to Soft tissue to hand and wrist/carpal bone fractures then : ")
            }
            Section {
                Text("Consider to provide a Volar/dorsal forearm splint")
                
                
            }
        }
    }
}

struct FractureSplintFive_Previews: PreviewProvider {
    static var previews: some View {
        FractureSplintFive()
    }
}
