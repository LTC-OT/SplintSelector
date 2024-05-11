//
//  FractureSplintSeven.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-03-27.
//

import SwiftUI

struct FractureSplintSeven: View {
    @State  var client = FractureClient()
    
    var body: some View {
        Form {
            Section {
                VStack (alignment: .center, spacing: 20){
                    Image(.uShapedAluminumSplint)
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 300, height: 300, alignment: .center)
                    Text("U Shaped Aluminum Splint")
                        .font(.title)
                        .frame(width: 350, height: 50, alignment: .center)
                }
            }
            Section {
                Text("If a distal phalangeal fracture then : ")
            }
            Section {
                Text("Consider to provide an U Shaped Aluminum Splint")
                
                
            }
        }
    }
}

struct FractureSplintSeven_Previews: PreviewProvider {
    static var previews: some View {
        FractureSplintSeven()
    }
}
