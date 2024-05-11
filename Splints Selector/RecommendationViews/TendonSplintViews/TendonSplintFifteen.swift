//
//  TendonSplintFifteen.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-04-03.
//

import SwiftUI

struct TendonSplintFifteen: View {
    @State  var client = FractureClient()
    
    var body: some View {
        
        Form {
            Section {
                
                VStack(alignment: .center, spacing: 20) {
                    Image(.peronealTendontis)
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 300, height: 300, alignment: .center)
                    Text("Peroneal Tendontis")
                        .font(.title)
                        .frame(width: 350, height: 50, alignment: .center)
                }
            }
            
            Section {
                
                Text("Peroneal tendonitis is inflammation in one or both of the tendons that connect your lower leg to your foot. It’s usually due to overusing the tendons, but it can also be the result of a sudden injury such as an ankle sprain. Pain and swelling in your peroneal tendons  then : ")
            }
            Section {
                Text("Consider to provide a Peroneal Tendontis Splint")
                
            }
            
        }
    }
}

struct TendonSplintFifteen_Previews: PreviewProvider {
    static var previews: some View {
        TendonSplintFifteen()
    }
}
