//
//  TendonSplintTen.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-04-01.
//

import SwiftUI

struct TendonSplintTen: View {
    @ObservedObject  var client = FractureClient()
    
    var body: some View {
        
        
        VStack {
            
            VStack(alignment: .center, spacing: 20) {
                Image("Flexor carpi ulnaris")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 300, height: 300, alignment: .center)
                Text("Flexor carpi ulnaris")
                    .font(.title)
                    .frame(width: 350, height: 50, alignment: .center)
            }
            
            VStack (alignment: .leading, spacing:  30){
                
                Text("Flexor carpi Ulnaris (FCU) is a common injury that causes ulnar sided wrist pain. This muscle is the primary flexor of the wrist, making wrist curls possible. It is a major flexor and responsible for a large part of grip then : ")
                
                Text("Consider to provide a Extensor Tendon Dynamic Splint")
                
            }.frame(width: 350, height: 250, alignment: .center)
            
        }.padding(.bottom, 23)
    }
}

struct TendonSplintTen_Previews: PreviewProvider {
    static var previews: some View {
        TendonSplintTen()
    }
}
