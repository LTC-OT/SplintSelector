//
//  TendonSplintTen.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-04-01.
//

import SwiftUI

struct TendonSplintTen: View {
    @State  var client = FractureClient()
    
    var body: some View {
        
        
        Form {
            Section {
                
                VStack(alignment: .center, spacing: 20) {
                    Image(.flexorCarpiUlnaris)
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 300, height: 300, alignment: .center)
                    Text("Flexor carpi ulnaris")
                        .font(.title)
                        .frame(width: 350, height: 50, alignment: .center)
                }
                
            }
                Section {
                    
                    Text("Flexor carpi Ulnaris (FCU) is a common injury that causes ulnar sided wrist pain. This muscle is the primary flexor of the wrist, making wrist curls possible. It is a major flexor and responsible for a large part of grip then : ")
                }
                Section {
                
                Text("Consider to provide a Extensor Tendon Dynamic Splint")
                
            }
            
        }
    }
}

struct TendonSplintTen_Previews: PreviewProvider {
    static var previews: some View {
        TendonSplintTen()
    }
}
