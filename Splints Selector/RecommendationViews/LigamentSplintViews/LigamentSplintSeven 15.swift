//
//  LigamentSplintSeven.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-03-27.
//

import SwiftUI

struct LigamentSplintSeven: View {
    @ObservedObject  var client = FractureClient()
    
    var body: some View {
        
        VStack {
            
            VStack(alignment: .center, spacing: 20) {
                Image("shoulder immobilization")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 300, height: 300, alignment: .center)
                Text("Shoulder immobilization")
                    .frame(width: 300, height: 50, alignment: .center)
                    .font(.title)
            }
            
            VStack (alignment: .center, spacing:  30){
                
                Text("If a Shoulder dislocation/ACL injury then : ")
              
                Text("Consider to provide a shoulder immobilization")
                    
            }.frame(width: 350, height: 250, alignment: .center)
            
        }.padding(.bottom, 30)
    }
    
}

struct LigamentSplintSeven_Previews: PreviewProvider {
    static var previews: some View {
        LigamentSplintSeven()
    }
}
