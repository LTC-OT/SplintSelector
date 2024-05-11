//
//  FractureSplintFourteen.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-03-27.
//

import SwiftUI

struct FractureSplintFourteen: View {
    
    @State var client = FractureClient()
    
    var body: some View {
        Form {
            Section {
                VStack (alignment: .center, spacing: 20){
                    Image(.posteriorAnkleSplint)
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 300, height: 300, alignment: .center)
                    Text("Posterior Ankle Splint")
                        .font(.title)
                        .frame(width: 300, height: 50, alignment: .center)
                }
            }
            Section {
                Text("If isolated, non displaced malleolar fractures or acute foot fractures then : ")
            }
            Section {
                Text("Consider to provide a Posterior Ankle Splint")
            }
        }
    }
}

struct FractureSplintFourteen_Previews: PreviewProvider {
    static var previews: some View {
        FractureSplintFourteen()
    }
}
