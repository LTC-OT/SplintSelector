//
//  LigamentSplintSeven.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-03-27.
//

import SwiftUI

struct LigamentSplintSeven: View {
    @State  var client = FractureClient()
    
    var body: some View {
        
        Form {
            Section {
                
                VStack(alignment: .center, spacing: 20) {
                    Image(.shoulderImmobilization)
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 300, height: 300, alignment: .center)
                    Text("Shoulder immobilization")
                        .frame(width: 300, height: 50, alignment: .center)
                        .font(.title)
                }
            }
            
            Section {
                
                Text("If a Shoulder dislocation/ACL injury then : ")
            }
            Section {
                
                Text("Consider to provide a shoulder immobilization")
                
            }
        }
    }
    
}

struct LigamentSplintSeven_Previews: PreviewProvider {
    static var previews: some View {
        LigamentSplintSeven()
    }
}
