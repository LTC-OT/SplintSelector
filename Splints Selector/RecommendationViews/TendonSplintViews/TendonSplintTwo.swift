//
//  TendonSplintTwo.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-03-31.
//

import SwiftUI
import Observation

struct TendonSplintTwo: View {
    @State var client = FractureClient()
    
    var body: some View {
        
        Form {
            Section {
                
                VStack(alignment: .center, spacing: 20) {
                    Image(.extensorPollicis)
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 300, height: 300, alignment: .center)
                    Text("Extensor Pollicis Longus")
                        .font(.title)
                        .frame(width: 350, height: 50, alignment: .center)
                }
            }
            
            Section {
                
                Text("If a Extensor pollicis longus injured then : ")
            }
            Section {
                Text("Consider to provide a Extensor Tendon Dynamic Splint")
            
                
            }
            

            
        }
    }
}
struct TendonSplintTwo_Previews: PreviewProvider {
    static var previews: some View {
        TendonSplintTwo()
    }
}
