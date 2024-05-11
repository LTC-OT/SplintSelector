//
//  LigamentSplintTwo.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-03-27.
//

import SwiftUI

struct LigamentSplintTwo: View {
    @State  var client = FractureClient()
    
    var body: some View {
        
        Form {
            Section {
                
                VStack(alignment: .center, spacing: 20) {
                    Image(.kneePosteriorCruciateLigamentSmall)
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 300, height: 300, alignment: .center)
                    Text("Knee PCL")
                        .frame(width: 350, height: 50, alignment: .center)
                        .font(.title)
                }
            }
            
            Section {
                
                Text("If a Knee Posterior Cruciate ligament injury then : ")
            }
            Section {
                Text("Consider to provide a Knee Posterior cruciate ligament")
                
            }
        }
    }
}

struct LigamentSplintTwo_Previews: PreviewProvider {
    static var previews: some View {
        LigamentSplintTwo()
    }
}
