//
//  LigamentSplintTwelve.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-03-28.
//

import SwiftUI

struct LigamentSplintTwelve: View {
    
    @State  var client = FractureClient()
    
    var body: some View {
        
        
        Form {
            Section {
                
                VStack(alignment: .center, spacing: 20) {
                    Image(.pipLigament)
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 300, height: 300, alignment: .center)
                    Text("PIP Ligament Splint")
                        .frame(width: 300, height: 50, alignment: .center)
                        .font(.title)
                }
                
            }
            
            
            Section {
                
                Text("If a PIP Ligament injury then : ")
            }
            Section {
                
                Text("Consider to provide a PIP Ligament Splint")
                
            }
        }
    }
    
}
struct LigamentSplintTwelve_Previews: PreviewProvider {
    static var previews: some View {
        LigamentSplintTwelve()
    }
}
