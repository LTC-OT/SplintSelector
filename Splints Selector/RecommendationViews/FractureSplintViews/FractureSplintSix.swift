//
//  FractureSplintSix.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-03-27.
//

import SwiftUI

struct FractureSplintSix: View {
    @State  var client = FractureClient()
    
    var body: some View {
        Form {
            Section {
                VStack (alignment: .center, spacing: 20){
                    Image(.buddyTaping)
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 300, height: 300, alignment: .center)
                    Text("Buddy taping")
                        .font(.title)
                        .frame(width: 300, height: 50, alignment: .center)
                }
            }
            Section {
                Text("If a Non-displaced proximal/middle phalangeal shaft fracture and sprains then : ")
            }
            Section {
                Text("Consider to provide a Buddy taping")
                
            }
        }
    }
}

struct FractureSplintSix_Previews: PreviewProvider {
    static var previews: some View {
        FractureSplintSix()
    }
}
