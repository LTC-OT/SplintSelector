//
//  LigamentSplintThree.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-03-27.
//

import SwiftUI

struct LigamentSplintThree: View {
    
    @ObservedObject  var client = FractureClient()
    
    var body: some View {
        
        VStack {
            
            VStack(alignment: .center, spacing: 20) {
                Image("Knee Lateral Collateral Ligament")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 300, height: 300, alignment: .center)
                Text("Knee LCL")
                    .frame(width: 300, height: 50, alignment: .center)
                    .font(.title)
                
            }
            
            VStack (alignment: .center, spacing:  30){
                
                Text("If a Knee Lateral Collateral Ligament injury then : ")
                
                Text("Consider to provide a Knee Lateral Collateral Ligament")
                
            }.frame(width: 350, height: 250, alignment: .center)
            
        }.padding(.bottom, 30)
    }
    
}

struct LigamentSplintThree_Previews: PreviewProvider {
    static var previews: some View {
        LigamentSplintThree()
    }
}
