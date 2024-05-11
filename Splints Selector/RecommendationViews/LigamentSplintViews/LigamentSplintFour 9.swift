//
//  LigamentSplintFour.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-03-27.
//

import SwiftUI

struct LigamentSplintFour: View {
    @ObservedObject  var client = FractureClient()
    
    var body: some View {
    
        VStack {
            
            VStack(alignment: .center, spacing: 20) {
                Image("Knee Medial Collateral ligament")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 300, height: 300, alignment: .center)
                Text("Knee MCL")
                    .frame(width: 300, height: 50, alignment: .center)
                    .font(.title)  
            }
    
            VStack (alignment: .center, spacing:  30){
                
                Text("If Knee Medial Collateral ligament injury then : ")
              
                Text("Consider to provide a Knee Medial Collateral ligament")
                    
            }.frame(width: 350, height: 250, alignment: .center)
            
        }.padding(.bottom, 30)
    }
}
struct LigamentSplintFour_Previews: PreviewProvider {
    static var previews: some View {
        LigamentSplintFour()
    }
}
