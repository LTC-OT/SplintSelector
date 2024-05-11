//
//  TendonSplintEleven.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-04-02.
//

import SwiftUI

struct TendonSplintEleven: View {
    @ObservedObject  var client = FractureClient()
    
    var body: some View {
        
        VStack {
            
            VStack(alignment: .center, spacing: 20) {
                Image("Flexor carpi radialis")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 300, height: 300, alignment: .center)
                Text("Flexor Carpi radialis")
                    .font(.title)
                    .frame(width: 350, height: 50, alignment: .center)
            }
            
            VStack (alignment: .leading, spacing:  30){
                
                Text("Flexor carpi radialis (FCR) tendon rupture can occur in rheumatoid patients, following cortisone injection for tenosynovitis, and following trauma. Following tendon rupture, tethering of the ruptured FCR tendon, or pseudotendon, can form which may or may not be symptomatic then : ")
                
                Text("Consider to provide a Flexor Carpi radialis Splint")
                
            }.frame(width: 350, height: 250, alignment: .center)
            
        }.padding(.bottom, 23)
    }
}

struct TendonSplintEleven_Previews: PreviewProvider {
    static var previews: some View {
        TendonSplintEleven()
    }
}
