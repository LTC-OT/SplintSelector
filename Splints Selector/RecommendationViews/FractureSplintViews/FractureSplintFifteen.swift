//
//  FractureSplintFifteen.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-03-27.
//

import SwiftUI

struct FractureSplintFifteen: View {
    
    @State  var client = FractureClient()
    
    var body: some View {
        Form {
            Section {
                VStack (alignment: .center, spacing: 20){
                    Image(.highTopWalkingBoot)
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 300, height: 300, alignment: .center)
                    Text("High Top Walking Boot")
                        .font(.title)
                        .frame(width: 300, height: 50, alignment: .center)
                }
            }
            Section {
                Text("If acute foot fracture/ severe sprains then : ")
            }
            
            Section {
                Text("Consider to provide a High Top Walking Boot")
            }
        }
    }
}

struct FractureSplintFifteen_Previews: PreviewProvider {
    static var previews: some View {
        FractureSplintFifteen()
    }
}
