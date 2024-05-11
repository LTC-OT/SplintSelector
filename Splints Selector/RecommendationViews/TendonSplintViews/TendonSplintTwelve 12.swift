//
//  TendonSplintTwelve.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-04-02.
//

import SwiftUI

struct TendonSplintTwelve: View {
    @ObservedObject  var client = FractureClient()
    
    var body: some View {
        
        VStack {
            
            VStack(alignment: .center, spacing: 20) {
                Image("Quadriceps tendon")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 300, height: 300, alignment: .center)
                Text("Quadriceps tendon")
                    .font(.title)
                    .frame(width: 350, height: 50, alignment: .center)
            }
            
            VStack (alignment: .leading, spacing:  30){
                
                Text("Quadriceps tendon tears are not common. They most often occur among middle-aged people who play running or jumping sports then : ")
                
                Text("Consider to provide a Quadriceps tendon Splint")
                
            }.frame(width: 350, height: 250, alignment: .center)
            
        }.padding(.bottom, 23)
    }
}

struct TendonSplintTwelve_Previews: PreviewProvider {
    static var previews: some View {
        TendonSplintTwelve()
    }
}
