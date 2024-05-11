//
//  LigamentSplintNine.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-03-27.
//

import SwiftUI

struct LigamentSplintNine: View {
    
    @State  var client = FractureClient()
    
    var body: some View {
        
        
        Form {
            Section {
                
                VStack(alignment: .center, spacing: 20) {
                    Image(.wristSprain)
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 300, height: 300, alignment: .center)
                    Text("Wrist sprain splint")
                        .frame(width: 300, height: 50, alignment: .center)
                        .font(.title)
                }
                
            }
            
            
            Section {
                
                Text("If a Radial/Ulnar wrist sprain ligaments injury then : ")
            }
            Section {
                
                Text("Consider to provide a wrist sprain splint")
                
            }
        }
    }
    
}


struct LigamentSplintNine_Previews: PreviewProvider {
    static var previews: some View {
        LigamentSplintNine()
    }
}
