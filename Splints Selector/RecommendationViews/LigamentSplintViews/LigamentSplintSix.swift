//
//  LigamentSplintSix.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-03-27.
//

import SwiftUI

struct LigamentSplintSix: View {
    
    @State  var client = FractureClient()
    
    var body: some View {
        
        Form {
            Section {
                
                VStack(alignment: .center, spacing: 20) {
                    Image(.ankleAnteriorTalofibularSplint)
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 300, height: 300, alignment: .center)
                    Text("Ankle anterior talo/calcaneo fibular splint")
                        .frame(width: 300, height: 50, alignment: .center)
                        .font(.title)
                }
                
            }
            
            Section {
                
                Text("If a Ankle anterior talofibular ligament or a Ankle calcaneo fibular ligament injury then : ")
            }
            Section {
                
                Text("Consider to provide a Ankle anterior talo/calcaneo fibular splint")
                
            }
        }
    }
}

struct LigamentSplintSix_Previews: PreviewProvider {
    static var previews: some View {
        LigamentSplintSix()
    }
}
