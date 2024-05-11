//
//  LigamentSplintFour.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-03-27.
//

import SwiftUI

struct LigamentSplintFour: View {
    @State  var client = FractureClient()
    
    var body: some View {
    
        Form {
            Section {
                
                VStack(alignment: .center, spacing: 20) {
                    Image(.kneeMedialCollateralLigament)
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 300, height: 300, alignment: .center)
                    Text("Knee MCL")
                        .frame(width: 300, height: 50, alignment: .center)
                        .font(.title)
                }
            }
            
            Section {
                
                Text("If Knee Medial Collateral ligament injury then : ")
            }
            Section {
                
                Text("Consider to provide a Knee Medial Collateral ligament")
                
            }
        }
    }
}
struct LigamentSplintFour_Previews: PreviewProvider {
    static var previews: some View {
        LigamentSplintFour()
    }
}
