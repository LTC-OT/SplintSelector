//
//  FractureSplintEight.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-03-27.
//

import SwiftUI

struct FractureSplintEight: View {
    @State  var client = FractureClient()
    
    var body: some View {
        Form {
            Section {
                VStack (alignment: .center, spacing: 20){
                    Image(.dorsalBlockingSplint)
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 300, height: 300, alignment: .center)
                    Text("Dorsal Blocking Splint")
                        .font(.title)
                        .frame(width: 300, height: 50, alignment: .center)
                }
            }
            Section {
                Text("If a middle phalangeal volar plate avulsions and stable reduced PIP joint dislocations then : ")
            }
            Section {
                
                Text("Consider to provide a Dorsal Blocking Splint")
                
            }
        }
    }
}

struct FractureSplintEight_Previews: PreviewProvider {
    static var previews: some View {
        FractureSplintEight()
    }
}
