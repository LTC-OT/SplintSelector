//
//  FractureSplintTen.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-03-27.
//

import SwiftUI

struct FractureSplintTen: View {
    
    @State  var client = FractureClient()
    
    var body: some View {
        Form {
            Section {
                VStack (alignment: .center, spacing: 20){
                    Image(.longArmPosteriorSplint)
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 300, height: 300, alignment: .center)
                    Text("Long Arm Posterior Splint")
                        .font(.title)
                        .frame(width: 350, height: 50, alignment: .center)
                }
            }
            Section {
                Text("If a Distal humeral and proximal/mid shaft forearm fractures Non buckle wrist fractures then : ")
            }
            Section {
                Text("Consider to provide a Long Arm Posterior Splint")
                
                
            }
        }
    }
}

struct FractureSplintTen_Previews: PreviewProvider {
    static var previews: some View {
        FractureSplintTen()
    }
}
