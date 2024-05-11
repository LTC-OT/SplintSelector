//
//  TendonSplintOne.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-03-31.
//


import SwiftUI
import Observation

struct TendonSplintOne: View {
    @State  var client = FractureClient()
    
    var body: some View {
        
        Form {
            Section {
                VStack(alignment: .center, spacing: 20) {
                    Image(.extensorTendon)
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 300, height: 300, alignment: .center)
                    Text("Extensor Tendon Splint")
                        .font(.title)
                        .frame(width: 350, height: 90, alignment: .center)
                }
            }
            Section {
                
                
                Text("If a Extensor Digitorum Communis injured then : ")
                
            }
            Section {
                Text("Consider to provide a Extensor Tendon Dynamic Splint")
                
            }
            
        }
    }
}

//struct TendonSplintOne_Previews: PreviewProvider {
//    static var previews: some View {

#Preview {
        TendonSplintOne()
//    }
}
