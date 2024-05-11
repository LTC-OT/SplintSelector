//
//  TendonSplintFour.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-04-01.
//

import SwiftUI

struct TendonSplintFour: View {
    @State  var client = FractureClient()
    
    var body: some View {
        
        
        Form {
            Section {
                
                VStack(alignment: .center, spacing: 20) {
                    Image(.boutonnièreDeformity)
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 300, height: 300, alignment: .center)
                    Text("Boutonnière deformity")
                        .font(.title)
                        .frame(width: 350, height: 50, alignment: .center)
                }
            }
            
            Section {
                
                Text("If a an injury to the tendons that straightens the middle joint of your finger. The result is that the middle joint of the injured finger will not straighten, while the fingertip bends back then : ")
            }
            Section {
                Text("Consider to provide a  boutonniere deformity  Splint")
                
            }
            
        }
    }
    
}

struct TendonSplintFour_Previews: PreviewProvider {
    static var previews: some View {
        TendonSplintFour()
    }
}
