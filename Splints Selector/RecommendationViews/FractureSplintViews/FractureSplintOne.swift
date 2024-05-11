//
//  FractureSplintOne.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-03-27.
//

import SwiftUI

struct FractureSplintOne: View {
    
    @State  var client = FractureClient()
    
    var body: some View {
        Form {
            Section {
                
                VStack(alignment: .center, spacing: 20) {
                    
                    Image(.ulnarGutterSplint)
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 300, height: 300, alignment: .center)
                    Text("Ulnar Gutter Splint")
                        .font(.title)
                    .frame(width: 300, height: 50, alignment: .center)}
            }
            Section {
                
                Text("If an injury to fourth and fifth proximal/middle phalangeal shaft fractures/ metacarpal fractures then : ")
            }
            Section {
                
                Text("Consider to provide a Ulnar Gutter-Splint")
                
            }
        }
    }
    
}

struct FractureSplintOne_Previews: PreviewProvider {
    static var previews: some View {
        FractureSplintOne()
    }
}
