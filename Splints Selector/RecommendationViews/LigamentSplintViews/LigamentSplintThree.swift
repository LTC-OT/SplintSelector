//
//  LigamentSplintThree.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-03-27.
//

import SwiftUI

struct LigamentSplintThree: View {
    
    @State  var client = FractureClient()
    
    var body: some View {
        
        Form {
            Section {
                
                VStack(alignment: .center, spacing: 20) {
                    Image(.kneeLateralCollateralLigament)
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 300, height: 300, alignment: .center)
                    Text("Knee LCL")
                        .frame(width: 300, height: 50, alignment: .center)
                        .font(.title)
                    
                }
            }
            
            Section {
                
                Text("If a Knee Lateral Collateral Ligament injury then : ")
            }
            Section {
                
                Text("Consider to provide a Knee Lateral Collateral Ligament")
                
            }
        }
    }
    
}

struct LigamentSplintThree_Previews: PreviewProvider {
    static var previews: some View {
        LigamentSplintThree()
    }
}
