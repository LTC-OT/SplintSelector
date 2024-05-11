//
//  TendonSplintSix.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-04-01.
//

import SwiftUI

struct TendonSplintSix: View {
    @State  var client = FractureClient()
    
    var body: some View {
        
        Form {
            Section {
                
                VStack(alignment: .center, spacing: 20) {
                    Image(.triggerFinger)
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 300, height: 300, alignment: .center)
                    Text("Extensor Pollicis Longus")
                        .font(.title)
                        .frame(width: 350, height: 50, alignment: .center)
                }
            }
            
            Section{
                
                Text("Trigger finger is a condition in which one of your fingers gets stuck in a bent position. Your finger may bend or straighten with a snap — like a trigger being pulled and released. Trigger finger is also known as stenosing tenosynovitis then : ")
            }
            Section {
                Text("Consider to provide a Trigger finger Splint")
                
            }
            
            
        }
    }
}

struct TendonSplintSix_Previews: PreviewProvider {
    static var previews: some View {
        TendonSplintSix()
    }
}
