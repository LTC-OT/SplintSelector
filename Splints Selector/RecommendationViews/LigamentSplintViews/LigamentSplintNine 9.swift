//
//  LigamentSplintNine.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-03-27.
//

import SwiftUI

struct LigamentSplintNine: View {
    
    @ObservedObject  var client = FractureClient()
    
    var body: some View {
        
        
        VStack {
            
            VStack(alignment: .center, spacing: 20) {
                Image("wrist sprain")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 300, height: 300, alignment: .center)
                Text("Wrist sprain splint")
                    .frame(width: 300, height: 50, alignment: .center)
                    .font(.title)
                    
            }
           
            
            VStack (alignment: .center, spacing:  30){
                
                Text("If a Radial/Ulnar wrist sprain ligaments injury then : ")
              
                Text("Consider to provide a wrist sprain splint")
                    
            }.frame(width: 350, height: 250, alignment: .center)
            
        }.padding(.bottom, 30)
    }
    
}


struct LigamentSplintNine_Previews: PreviewProvider {
    static var previews: some View {
        LigamentSplintNine()
    }
}
