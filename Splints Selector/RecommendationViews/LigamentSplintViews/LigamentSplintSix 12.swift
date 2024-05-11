//
//  LigamentSplintSix.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-03-27.
//

import SwiftUI

struct LigamentSplintSix: View {
    
    @ObservedObject  var client = FractureClient()
    
    var body: some View {
        
        VStack {
            
            VStack(alignment: .center, spacing: 20) {
                Image("Ankle anterior talofibular splint")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 300, height: 300, alignment: .center)
                Text("Ankle anterior talo/calcaneo fibular splint")
                    .frame(width: 300, height: 50, alignment: .center)
                    .font(.title)
                
            }
            
            VStack (alignment: .center, spacing:  30){
                
                Text("If a Ankle anterior talofibular ligament or a Ankle calcaneo fibular ligament injury then : ")
                
                Text("Consider to provide a Ankle anterior talo/calcaneo fibular splint")
                
            }.frame(width: 350, height: 250, alignment: .center)
            
        }.padding(.bottom, 30)
    }
}

struct LigamentSplintSix_Previews: PreviewProvider {
    static var previews: some View {
        LigamentSplintSix()
    }
}
