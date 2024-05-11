//
//  LigamentSplintThirteen.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-03-28.
//

import SwiftUI

struct LigamentSplintThirteen: View {
    @State  var client = FractureClient()
    
    var body: some View {
        Form {
            Section {
                
                VStack(alignment: .center, spacing: 20) {
                    Image(.palmProtector)
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 300, height: 300, alignment: .center)
                    Text("Palm protector Splint")
                        .frame(width: 300, height: 50, alignment: .center)
                        .font(.title)
                }
                
            }
            
            
            Section {
                
                Text("If a Severe Fingers contracture in flexion then : ")
            }
            Section {
                
                Text("Consider to provide a Palm Protector Splint")
                
            }
        }
    }
    
}

struct LigamentSplintThirteen_Previews: PreviewProvider {
    static var previews: some View {
        LigamentSplintThirteen()
    }
}
