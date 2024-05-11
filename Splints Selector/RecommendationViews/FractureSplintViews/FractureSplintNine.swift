//
//  FractureSplintNine.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-03-27.
//

import SwiftUI

struct FractureSplintNine: View {
    
    @State var client = FractureClient()
    
    var body: some View {
        Form {
            Section {
                VStack (alignment: .center, spacing: 20){
                    Image(.shortArmCast)
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 300, height: 300, alignment: .center)
                    Text("Short arm cast")
                        .font(.title)
                        .frame(width: 300, height: 50, alignment: .center)
                }
            }
            Section {
                Text("If a Non displaced, minimally displaced, or buckle fractures of the distal radiusCarpal bone fractures other than scaphoid/trapezium then : ")
            }
            Section {
                Text("Consider to provide a Short arm cast")
                
                
            }
        }
    }
}

struct FractureSplintNine_Previews: PreviewProvider {
    static var previews: some View {
        FractureSplintNine()
    }
}
