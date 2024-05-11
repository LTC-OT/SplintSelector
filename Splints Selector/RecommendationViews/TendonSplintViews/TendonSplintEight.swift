//
//  TendonSplintEight.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-04-01.
//

import SwiftUI

struct TendonSplintEight: View {
    @State  var client = FractureClient()
    
    var body: some View {
        
        Form {
            Section {
                
                VStack(alignment: .center, spacing: 20) {
                    Image(.flexorDigitorumProfundus)
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 300, height: 300, alignment: .center)
                    Text("Flexor digitorum profundus")
                        .font(.title)
                        .frame(width: 350, height: 50, alignment: .center)
                }
            }
            
            Section {
                
                Text("The injury causes forced extension of the DIP joint during active flexion. The ring finger is the weakest finger and accounts for 75 percent of jersey finger cases. 18 The injury can occur if the force is concentrated at the middle phalanx or at the distal phalanx then : ")
            }
            Section {
                Text("Consider to provide a Flexor digitorum profundus Splint")
                
            }
            
        }
    }
}

struct TendonSplintEight_Previews: PreviewProvider {
    static var previews: some View {
        TendonSplintEight()
    }
}
