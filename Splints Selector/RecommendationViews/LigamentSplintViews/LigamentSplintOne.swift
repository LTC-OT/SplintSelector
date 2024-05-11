//
//  LigamentSplintOne.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-03-27.
//

import SwiftUI

struct LigamentSplintOne: View {
    
    @State  var client = FractureClient()
    
    var body: some View {
        
        
        Form {
            Section {
                
                VStack(alignment: .center, spacing: 20) {
                    Image(.kneeAnteriorCruciateLigament)
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 300, height: 300, alignment: .center)
                    Text("Knee ACL")
                        .font(.title)
                        .frame(width: 350, height: 50, alignment: .center)
                }
            }
            
            
            Section {
                
                Text("If a Knee Anterior Cruciate ligament injury then : ")
            }
            Section {
                
                Text("Consider to provide a Knee Anterior Cruciate ligament")
                
            }
        }
    }
    
}

struct LigamentSplintOne_Previews: PreviewProvider {
    static var previews: some View {
        LigamentSplintOne()
    }
}
