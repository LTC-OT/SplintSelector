//
//  LigamentSplintFive.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-03-27.
//

import SwiftUI

struct LigamentSplintFive: View {
    @ObservedObject  var client = FractureClient()
    
    var body: some View {
        
        VStack {
            
            VStack(alignment: .center, spacing: 20) {
                Image("Knee Patella dislocation")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 300, height: 300, alignment: .center)
                Text("Knee Patella dislocation")
                    .frame(width: 300, height: 50, alignment: .center)
                    .font(.title)
            }

            VStack (alignment: .center, spacing:  30){
                
                Text("If a Knee Patella dislocation then : ")
            
                Text("Consider to provide a Knee Patella dislocation")
                    
            }.frame(width: 350, height: 250, alignment: .center)
            
        }.padding(.bottom, 30)
    }
}

struct LigamentSplintFive_Previews: PreviewProvider {
    static var previews: some View {
        LigamentSplintFive()
    }
}
