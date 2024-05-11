//
//  LigamentSplintOne.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-03-27.
//

import SwiftUI

struct LigamentSplintOne: View {
    
    @ObservedObject  var client = FractureClient()
    
    var body: some View {
        
        
        VStack {
            
            VStack(alignment: .center, spacing: 20) {
                Image("Knee Anterior Cruciate ligament")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 300, height: 300, alignment: .center)
                Text("Knee ACL")
                    .font(.title)
                    .frame(width: 350, height: 50, alignment: .center)
            }
            
            
            VStack (alignment: .center, spacing:  30){
                
                Text("If a Knee Anterior Cruciate ligament injury then : ")
                
                Text("Consider to provide a Knee Anterior Cruciate ligament")
                
            }.frame(width: 350, height: 250, alignment: .center)
            
        }.padding(.bottom, 23)
    }
    
}

struct LigamentSplintOne_Previews: PreviewProvider {
    static var previews: some View {
        LigamentSplintOne()
    }
}
