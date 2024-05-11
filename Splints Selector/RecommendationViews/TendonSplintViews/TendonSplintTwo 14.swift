//
//  TendonSplintTwo.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-03-31.
//

import SwiftUI

struct TendonSplintTwo: View {
    @ObservedObject  var client = FractureClient()
    
    var body: some View {
        
        VStack {
            
            VStack(alignment: .center, spacing: 20) {
                Image("ExtensorPollicis")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 300, height: 300, alignment: .center)
                Text("Extensor Pollicis Longus")
                    .font(.title)
                    .frame(width: 350, height: 50, alignment: .center)
            }
            
            VStack (alignment: .leading, spacing:  30){
                
                Text("If a Extensor pollicis longus injurued then : ")
                
                Text("Consider to provide a Extensor Tendon Dynamic Splint")
                
            }
            .frameStyle()

            
        }.padding(.bottom, 23)
    }
}
struct TendonSplintTwo_Previews: PreviewProvider {
    static var previews: some View {
        TendonSplintTwo()
    }
}
