//
//  TendonSplintFourteen.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-04-03.
//

import SwiftUI

struct TendonSplintFourteen: View {
    @State  var client = FractureClient()
    
    var body: some View {
        
        Form {
            Section {
                
                VStack(alignment: .center, spacing: 20) {
                    Image(.posteriorTibialTendon)
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 300, height: 300, alignment: .center)
                    Text("Posterior tibial tendon")
                        .font(.title)
                        .frame(width: 350, height: 50, alignment: .center)
                }
            }
            
            Section {
                
                Text("Posterior tibial tendon dysfunction is one of the most common problems of the foot and ankle. It occurs when the posterior tibial tendon becomes inflamed or torn. As a result, the tendon may not be able to provide stability and support for the arch of the foot, resulting in flatfoot. then : ")
            }
            Section {
                
                Text("Consider to provide a Posterior Tibial Tendon Splint")
                
            }
            
        }
    }
}
struct TendonSplintFourteen_Previews: PreviewProvider {
    static var previews: some View {
        TendonSplintFourteen()
    }
}
