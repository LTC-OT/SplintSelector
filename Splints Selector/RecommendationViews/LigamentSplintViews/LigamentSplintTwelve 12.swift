//
//  LigamentSplintTwelve.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-03-28.
//

import SwiftUI

struct LigamentSplintTwelve: View {
    
    @ObservedObject  var client = FractureClient()
    
    var body: some View {
        
        
        VStack {
            
            VStack(alignment: .center, spacing: 20) {
                Image("PIP Ligament")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 300, height: 300, alignment: .center)
                Text("PIP Ligament Splint")
                    .frame(width: 300, height: 50, alignment: .center)
                    .font(.title)
                    
            }
           
            
            VStack (alignment: .center, spacing:  30){
                
                Text("If a PIP Ligament injury then : ")
              
                Text("Consider to provide a PIP Ligament Splint")
                    
            }.frame(width: 350, height: 250, alignment: .center)
            
        }.padding(.bottom, 30)
    }
    
}
struct LigamentSplintTwelve_Previews: PreviewProvider {
    static var previews: some View {
        LigamentSplintTwelve()
    }
}
