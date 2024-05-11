//
//  LigamentSplintTwo.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-03-27.
//

import SwiftUI

struct LigamentSplintTwo: View {
    @ObservedObject  var client = FractureClient()
    
    var body: some View {
        
        VStack {
            
            VStack(alignment: .center, spacing: 20) {
                Image("Knee Posterior cruciate ligament Small")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 300, height: 300, alignment: .center)
                Text("Knee PCL")
                    .frame(width: 350, height: 50, alignment: .center)
                    .font(.title)
                
            }
            
            VStack (alignment: .center, spacing:  30){
                
                Text("If a Knee Posterior Cruciate ligament injury then : ")
                
                Text("Consider to provide a Knee Posterior cruciate ligament")
                
            }.frame(width: 350, height: 250, alignment: .center)
            
        }.padding(.bottom, 30)
    }
}

struct LigamentSplintTwo_Previews: PreviewProvider {
    static var previews: some View {
        LigamentSplintTwo()
    }
}
