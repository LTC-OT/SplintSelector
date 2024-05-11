//
//  TendonSplintThree.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-04-01.
//

import SwiftUI

struct TendonSplintThree: View {
    @ObservedObject  var client = FractureClient()
    
    var body: some View {
        
        VStack {
            
            VStack(alignment: .center, spacing: 20) {
                Image("Mallet finger")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 300, height: 300, alignment: .center)
                Text("Mallet finger")
                    .font(.title)
                    .frame(width: 350, height: 50, alignment: .center)
            }
            
            VStack (alignment: .leading, spacing:  30){
                
                Text("If a thin tendon that straightens the end joint of a finger or thumb is injured then : ")
                
                Text("Consider to provide a Mallet Finger Splint")
                
            }.frameStyle()
        }.padding(.bottom, 23)
    }
}

struct TendonSplintThree_Previews: PreviewProvider {
    static var previews: some View {
        TendonSplintThree()
    }
}
