//
//  TendonSplintFive.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-04-01.
//

import SwiftUI

struct TendonSplintFive: View {
    @State  var client = FractureClient()
    
    var body: some View {
        
        Form {
            Section {
                
                VStack(alignment: .center, spacing: 20) {
                    Image(.theVolarPlate)
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 300, height: 300, alignment: .center)
                    Text("The volar plate")
                        .font(.title)
                        .frame(width: 350, height: 50, alignment: .center)
                }
            }
            Section {
                
                Text("If The volar plate is a ligament located at the middle knuckle (proximal interphalangeal joint - PIPJ) of the finger. It is commonly injured through hyperextension, for example a ball hitting the fingertip. then : ")
            }
            
            Section {
                Text("Consider to provide a volar plate Splint")
            }
            
        }
    }
}

struct TendonSplintFive_Previews: PreviewProvider {
    static var previews: some View {
        TendonSplintFive()
    }
}
