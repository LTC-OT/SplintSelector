//
//  FractureSplintTwo.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-03-27.
//

import SwiftUI

struct FractureSplintTwo: View {
    @State  var client = FractureClient()
    
    var body: some View {
        Form {
            Section {
                VStack(alignment: .center, spacing: 20) {
                    Image(.radialGutterSplint)
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 300, height: 300, alignment: .center)
                    Text("Radial Gutter-Splint")
                        .font(.title)
                        .frame(width: 300, height: 50, alignment: .center)
                }
            }
            Section {
                Text("If an injuriy to scaphoid/trapezium Non-displaced, non angulated/ extra-articular of first metacarpal fractures/ stable thumb fractures then : ")
            }
            Section {
                
                Text("Consider to provide a Radial Gutter-Splint")
                
                
            }
        }
    }
}



struct FractureSplintTwo_Previews: PreviewProvider {
    static var previews: some View {
        FractureSplintTwo()
    }
}
