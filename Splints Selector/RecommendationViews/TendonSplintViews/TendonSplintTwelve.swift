//
//  TendonSplintTwelve.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-04-02.
//

import SwiftUI

struct TendonSplintTwelve: View {
    @State  var client = FractureClient()
    
    var body: some View {
        
        Form {
            Section {
                
                VStack(alignment: .center, spacing: 20) {
                    Image(.quadricepsTendon)
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 300, height: 300, alignment: .center)
                    Text("Quadriceps tendon")
                        .font(.title)
                        .frame(width: 350, height: 50, alignment: .center)
                }
            }
            
            Section {
                
                Text("Quadriceps tendon tears are not common. They most often occur among middle-aged people who play running or jumping sports then : ")
            }
            Section {
                
                Text("Consider to provide a Quadriceps tendon Splint")
                
            }
            
        }
    }
}

struct TendonSplintTwelve_Previews: PreviewProvider {
    static var previews: some View {
        TendonSplintTwelve()
    }
}
