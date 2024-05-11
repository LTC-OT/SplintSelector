//
//  TendonSplintSix.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-04-01.
//

import SwiftUI

struct TendonSplintSix: View {
    @ObservedObject  var client = FractureClient()
    
    var body: some View {
        
        VStack {
            
            VStack(alignment: .center, spacing: 20) {
                Image("Trigger finger")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 300, height: 300, alignment: .center)
                Text("Extensor Pollicis Longus")
                    .font(.title)
                    .frame(width: 350, height: 50, alignment: .center)
            }
            
            VStack (alignment: .leading, spacing:  30){
                
                Text("Trigger finger is a condition in which one of your fingers gets stuck in a bent position. Your finger may bend or straighten with a snap — like a trigger being pulled and released. Trigger finger is also known as stenosing tenosynovitis then : ")
                
                Text("Consider to provide a Trigger finger Splint")
                
            }.frameStyle()
                
            
        }.padding(.bottom, 23)
    }
}

struct TendonSplintSix_Previews: PreviewProvider {
    static var previews: some View {
        TendonSplintSix()
    }
}
