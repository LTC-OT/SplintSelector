//
//  LigamentSplintFourteen.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-03-28.
//

import SwiftUI

struct LigamentSplintFourteen: View {
    
    @State  var client = FractureClient()
    
    var body: some View {
        
        Form {
            Section {
                VStack(alignment: .center, spacing: 20) {
                    Image(.fingerFlexionContracture)
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 300, height: 300, alignment: .center)
                    Text("Finger Flexion contracture")
                        .frame(width: 350, height: 50, alignment: .center)
                        .font(.title)
                }
                
            }
            Section {
                
                Text("If a Moderate/Mild fingers contracture in flexion then : ")
            }
            Section {
            
            Text("Consider to provide a Finger Flexion contracture Splint")
            
        }
    }
    }
    
}

struct LigamentSplintFourteen_Previews: PreviewProvider {
    static var previews: some View {
        LigamentSplintFourteen()
    }
}
