//
//  LigamentSplintEleven.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-03-28.
//

import SwiftUI

struct LigamentSplintEleven: View {
    
    @State  var client = FractureClient()
    
    var body: some View {
        
        
        Form {
            Section {
                
                VStack(alignment: .center, spacing: 20) {
                    Image(.sprainedThumb)
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 300, height: 300, alignment: .center)
                    Text("Thumb UCL splint")
                        .frame(width: 300, height: 50, alignment: .center)
                        .font(.title)
                }
                
            }
            
            
            Section {
                
                Text("If a Thumb ulnar collateral ligament injury then : ")
            }
            Section {
                
                Text("Consider to provide a Thumb ulnar collateral ligament splint")
                
            }
        }
    }
    
}

struct LigamentSplintEleven_Previews: PreviewProvider {
    static var previews: some View {
        LigamentSplintEleven()
    }
}
