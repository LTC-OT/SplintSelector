//
//  TendonSplintFifteen.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-04-03.
//

import SwiftUI

struct TendonSplintFifteen: View {
    @ObservedObject  var client = FractureClient()
    
    var body: some View {
        
        VStack {
            
            VStack(alignment: .center, spacing: 20) {
                Image("Peroneal Tendontis")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 300, height: 300, alignment: .center)
                Text("Peroneal Tendontis")
                    .font(.title)
                    .frame(width: 350, height: 50, alignment: .center)
            }
            
            VStack (alignment: .leading, spacing:  30){
                
                Text("Peroneal tendonitis is inflammation in one or both of the tendons that connect your lower leg to your foot. It’s usually due to overusing the tendons, but it can also be the result of a sudden injury such as an ankle sprain. Pain and swelling in your peroneal tendons  then : ")
                
                Text("Consider to provide a Peroneal Tendontis Splint")
                
            }.frame(width: 350, height: 260, alignment: .center)
            
        }.padding(.bottom, 23)
    }
}

struct TendonSplintFifteen_Previews: PreviewProvider {
    static var previews: some View {
        TendonSplintFifteen()
    }
}
