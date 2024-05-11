//
//  LigamentSplintFive.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-03-27.
//

import SwiftUI

struct LigamentSplintFive: View {
    @State  var client = FractureClient()
    
    var body: some View {
        
        Form {
            Section {
                
                VStack(alignment: .center, spacing: 20) {
                    Image(.kneePatellaDislocation)
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 300, height: 300, alignment: .center)
                    Text("Knee Patella dislocation")
                        .frame(width: 300, height: 50, alignment: .center)
                        .font(.title)
                }
            }
            
            Section{
                
                Text("If a Knee Patella dislocation then : ")
            }
            Section {
                
                Text("Consider to provide a Knee Patella dislocation")
                
            }
        }
    }
}

struct LigamentSplintFive_Previews: PreviewProvider {
    static var previews: some View {
        LigamentSplintFive()
    }
}
