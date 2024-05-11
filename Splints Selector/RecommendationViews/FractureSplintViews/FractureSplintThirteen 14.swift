//
//  FractureSplintThirteen.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-03-27.
//

import SwiftUI

struct FractureSplintThirteen: View {
    
    @ObservedObject  var client = FractureClient()
    
    var body: some View {
        
        VStack {
            VStack (alignment: .center, spacing: 20){
            Image("Short leg shaft and distal")
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .frame(width: 300, height: 300, alignment: .center)
            Text("Short leg shaft and distal")
                    .font(.title)
                    .frame(width: 300, height: 50, alignment: .center)
                    
            }
         
        
            VStack(alignment: .center, spacing:  30) {
                Text("If distal metatarsal and phalangeal fractures then : ")
                    
                Text("Consider to provide a Short leg shaft and distal")
                    

            }.frame(width: 350, height: 250, alignment: .center)
        }
        .padding(.bottom, 30)
    }
}

struct FractureSplintThirteen_Previews: PreviewProvider {
    static var previews: some View {
        FractureSplintThirteen()
    }
}
