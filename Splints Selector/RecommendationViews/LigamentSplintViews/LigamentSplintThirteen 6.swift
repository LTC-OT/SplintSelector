//
//  LigamentSplintThirteen.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-03-28.
//

import SwiftUI

struct LigamentSplintThirteen: View {
    @ObservedObject  var client = FractureClient()
    
    var body: some View {
        
        
        VStack {
            
            VStack(alignment: .center, spacing: 20) {
                Image("palm protector")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 300, height: 300, alignment: .center)
                Text("Palm protector Splint")
                    .frame(width: 300, height: 50, alignment: .center)
                    .font(.title)
                    
            }
          
            
            VStack (alignment: .center, spacing:  30){
                
                Text("If a Severe Fingers contracture in flexion then : ")
             
                Text("Consider to provide a Palm Protector Splint")
                    
            }.frame(width: 350, height: 250, alignment: .center)
            
        }.padding(.bottom, 30)
    }
    
}

struct LigamentSplintThirteen_Previews: PreviewProvider {
    static var previews: some View {
        LigamentSplintThirteen()
    }
}
