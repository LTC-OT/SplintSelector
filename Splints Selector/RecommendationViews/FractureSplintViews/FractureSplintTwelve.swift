//
//  FractureSplintTwelve.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-03-27.
//

import SwiftUI

struct FractureSplintTwelve: View {
    
    @State  var client = FractureClient()
    
    var body: some View {
        Form {
            Section {
                VStack (alignment: .center, spacing: 20){
                    Image(.posteriorKneeSplint)
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 300, height: 300, alignment: .center)
                    Text("Posterior knee splint")
                        .font(.title)
                        .frame(width: 300, height: 50, alignment: .center)
                }
            }
            Section {
                Text("If acute soft tissue and bony injuries of the lower extremity then : ")
            }
            Section {
                Text("Consider to provide a Posterior knee splint")
            }
        }
    }
}

struct FractureSplintTwelve_Previews: PreviewProvider {
    static var previews: some View {
        FractureSplintTwelve()
    }
}
