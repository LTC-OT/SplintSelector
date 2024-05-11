//
//  LigamentSplintEight.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-03-27.
//

import SwiftUI

struct LigamentSplintEight: View {
    @ObservedObject  var client = FractureClient()
    
    var body: some View {

        VStack {
            
            VStack(alignment: .center, spacing: 20) {
                Image("Tennis Elbow")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 300, height: 300, alignment: .center)
                Text("Tennis/Golfer Elbow")
                    .frame(width: 300, height: 50, alignment: .center)
                    .font(.title)
                    
            }
            
            VStack (alignment: .center, spacing: 30){
                
                Text("If a Elbow lateral/medial ligaments injury then : ")
                Text("Consider to provide a Tennis/Golfer Elbow Splint")
                    
            }
            .frame(width: 350, height: 250, alignment: .center)
        }.padding(.bottom, 10)
    }
}


struct LigamentSplintEight_Previews: PreviewProvider {
    static var previews: some View {
        LigamentSplintEight()
    }
}
