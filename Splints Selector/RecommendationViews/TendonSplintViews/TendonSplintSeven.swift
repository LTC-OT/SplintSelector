//
//  TendonSplintSeven.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-04-01.
//

import SwiftUI

struct TendonSplintSeven: View {
    @State  var client = FractureClient()
    
    var body: some View {
        
        Form {
            Section {
                
                VStack(alignment: .center, spacing: 20) {
                    Image(.flexorPollicisLongus)
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 300, height: 300, alignment: .center)
                    Text("Flexor pollicis longus")
                        .font(.title)
                        .frame(width: 350, height: 50, alignment: .center)
                }
            }
            
            Section {
                
                Text("Flexor pollicis longus is susceptible to muscle tears, muscle strain, tendonitis, and rupture. Marked weakness in the thumb, localized pain, or a decrease in the thumb's range of motion might indicate an injury to flexor pollicis longus then : ")
            }
            Section {
                Text("Consider to provide a Flexor pollicis longus splint")
                
            }
            
        }
    }
}
struct TendonSplintSeven_Previews: PreviewProvider {
    static var previews: some View {
        TendonSplintSeven()
    }
}
