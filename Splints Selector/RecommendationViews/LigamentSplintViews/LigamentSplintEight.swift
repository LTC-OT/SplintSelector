//
//  LigamentSplintEight.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-03-27.
//

import SwiftUI

struct LigamentSplintEight: View {
    @State var client = FractureClient()
    
    var body: some View {

        Form {
            Section {
                
                VStack(alignment: .center, spacing: 20) {
                    Image(.tennisElbow)
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 300, height: 300, alignment: .center)
                    Text("Tennis/Golfer Elbow")
                        .frame(width: 300, height: 50, alignment: .center)
                        .font(.title)
                }
                
            }
            
            Section {
                
                Text("If a Elbow lateral/medial ligaments injury then : ")
            }
            Section {
                Text("Consider to provide a Tennis/Golfer Elbow Splint")
                
            }
        }
    }
}


struct LigamentSplintEight_Previews: PreviewProvider {
    static var previews: some View {
        LigamentSplintEight()
    }
}
