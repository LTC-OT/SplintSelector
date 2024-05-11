//
//  FractureSplintFifteen.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-03-27.
//

import SwiftUI

struct FractureSplintFifteen: View {
    
    @ObservedObject  var client = FractureClient()
    
    var body: some View {
        
        VStack {
            VStack (alignment: .center, spacing: 20){
            Image("High Top Walking Boot")
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .frame(width: 300, height: 300, alignment: .center)
            Text("High Top Walking Boot")
                    .font(.title)
                    .frame(width: 300, height: 50, alignment: .center)
                    
            }
           
        
            VStack(alignment: .center, spacing:  30) {
                Text("If acute foot fracture/ severe sprains then : ")
             
                    
                Text("Consider to provide a High Top Walking Boot")
                    

            }.frame(width: 350, height: 250, alignment: .center)
        }
        .padding(.bottom, 30)
    }
}

struct FractureSplintFifteen_Previews: PreviewProvider {
    static var previews: some View {
        FractureSplintFifteen()
    }
}
