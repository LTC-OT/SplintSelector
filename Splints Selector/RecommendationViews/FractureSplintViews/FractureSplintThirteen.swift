//
//  FractureSplintThirteen.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-03-27.
//

import SwiftUI

struct FractureSplintThirteen: View {
    
    @State  var client = FractureClient()
    
    var body: some View {
        Form {
            Section {
                VStack (alignment: .center, spacing: 20){
                    Image(.shortLegShaftAndDistal)
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 300, height: 300, alignment: .center)
                    Text("Short leg shaft and distal")
                        .font(.title)
                        .frame(width: 300, height: 50, alignment: .center)
                }
            }
            Section {
                Text("If distal metatarsal and phalangeal fractures then : ")
            }
            Section {
                
                Text("Consider to provide a Short leg shaft and distal")
            }
        }
    }
}

struct FractureSplintThirteen_Previews: PreviewProvider {
    static var previews: some View {
        FractureSplintThirteen()
    }
}
