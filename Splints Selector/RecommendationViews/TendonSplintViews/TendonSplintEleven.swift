//
//  TendonSplintEleven.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-04-02.
//

import SwiftUI

struct TendonSplintEleven: View {
    @State  var client = FractureClient()
    
    var body: some View {
        
        Form {
            Section {
                VStack(alignment: .center, spacing: 20) {
                    Image(.flexorCarpiRadialis)
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 300, height: 300, alignment: .center)
                    Text("Flexor Carpi radialis")
                        .font(.title)
                        .frame(width: 350, height: 50, alignment: .center)
                }
            }
            
            Section {
                
                Text("Flexor carpi radialis (FCR) tendon rupture can occur in rheumatoid patients, following cortisone injection for tenosynovitis, and following trauma. Following tendon rupture, tethering of the ruptured FCR tendon, or pseudotendon, can form which may or may not be symptomatic then : ")
            }
            Section {
                
                Text("Consider to provide a Flexor Carpi radialis Splint")
                
            }
            
        }
    }
}

struct TendonSplintEleven_Previews: PreviewProvider {
    static var previews: some View {
        TendonSplintEleven()
    }
}
