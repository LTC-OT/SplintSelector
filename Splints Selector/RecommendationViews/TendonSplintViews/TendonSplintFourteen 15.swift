//
//  TendonSplintFourteen.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-04-03.
//

import SwiftUI

struct TendonSplintFourteen: View {
    @ObservedObject  var client = FractureClient()
    
    var body: some View {
        
        VStack {
            
            VStack(alignment: .center, spacing: 20) {
                Image("Posterior tibial tendon")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 300, height: 300, alignment: .center)
                Text("Posterior tibial tendon")
                    .font(.title)
                    .frame(width: 350, height: 50, alignment: .center)
            }
            
            VStack (alignment: .leading, spacing:  30){
                
                Text("Posterior tibial tendon dysfunction is one of the most common problems of the foot and ankle. It occurs when the posterior tibial tendon becomes inflamed or torn. As a result, the tendon may not be able to provide stability and support for the arch of the foot, resulting in flatfoot. then : ")
                
                Text("Consider to provide a Posterior Tibial Tendon Splint")
                
            }.frame(width: 350, height: 250, alignment: .center)
            
        }.padding(.bottom, 23)
    }
}
struct TendonSplintFourteen_Previews: PreviewProvider {
    static var previews: some View {
        TendonSplintFourteen()
    }
}
