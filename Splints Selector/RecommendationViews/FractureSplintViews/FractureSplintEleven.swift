//
//  FractureSplintEleven.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-03-27.
//

import SwiftUI

struct FractureSplintEleven: View {
    
    @State  var client = FractureClient()
    
    var body: some View {
        Form {
            Section {
                VStack (alignment: .center, spacing: 20){
                    Image(.doubleSugarTongSplint)
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 300, height: 300, alignment: .center)
                    Text("Double Sugar-Tong Splint")
                        .font(.title)
                        .frame(width: 350, height: 50, alignment: .center)
                }
            }
            Section {
                Text("If an acute elbow and forearm fractures, and non displaced, extra-articular Colles fractures then : ")
            }
            Section {
                Text("Consider to provide a Double Sugar-Tong Splint")
            }
        }
    }
}

struct FractureSplintEleven_Previews: PreviewProvider {
    static var previews: some View {
        FractureSplintEleven()
    }
}
