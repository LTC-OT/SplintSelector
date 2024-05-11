//
//  FractureSplintFour.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-03-27.
//

import SwiftUI

struct FractureSplintFour: View {
    @State  var client = FractureClient()
    
    var body: some View {
        Form {
            Section {
                VStack (alignment: .center, spacing: 20){
                    Image(.malletFingerSplint)
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 300, height: 300, alignment: .center)
                    Text("Mallet Finger Splint")
                        .font(.title)
                        .frame(width: 300, height: 50, alignment: .center)
                }
                
            }
            Section  {
                Text("If an injuriy to Extensor tendon avulsion from the base of the distal phalanx then : ")
            }
            Section {
                
                Text("Consider to provide a Mallet Finger Splint")
                
                
            }
        }
    }
}

struct FractureSplintFour_Previews: PreviewProvider {
    static var previews: some View {
        FractureSplintFour()
    }
}
