//
//  LigamentSplintFourteen.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-03-28.
//

import SwiftUI

struct LigamentSplintFourteen: View {
    
    @ObservedObject  var client = FractureClient()
    
    var body: some View {
        
        
        VStack {
            
            VStack(alignment: .center, spacing: 20) {
                Image("Finger Flexion contracture")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 300, height: 300, alignment: .center)
                Text("Finger Flexion contracture")
                    .frame(width: 350, height: 50, alignment: .center)
                    .font(.title)
                    
            }
         
            
            VStack (alignment: .center, spacing:  30){
                
                Text("If a Moderate/Mild fingers contracture in flexion then : ")
               
                Text("Consider to provide a Finger Flexion contracture Splint")
                    
            }.frame(width: 350, height: 250, alignment: .center)
            
        }.padding(.bottom, 30)
    }
    
}

struct LigamentSplintFourteen_Previews: PreviewProvider {
    static var previews: some View {
        LigamentSplintFourteen()
    }
}
