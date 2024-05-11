//
//  TendonSplintNine.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-04-01.
//

import SwiftUI

struct TendonSplintNine: View {
    @ObservedObject  var client = FractureClient()
    
    var body: some View {
        
        VStack {
            
            VStack(alignment: .center, spacing: 20) {
                Image("Flexor Digitorum Superficialis")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 300, height: 300, alignment: .center)
                Text("Flexor digitorum superficialis ")
                    .font(.title)
                    .frame(width: 350, height: 50, alignment: .center)
            }
            
            VStack (alignment: .leading, spacing:  30){
                
                Text("Flexor digitorum superficialis muscle weakness is associated with median nerve injury. Another common cause that can hamper FDS function is tendon injury. There are various treatment regimes based upon the causes of a decremental function of FDS affecting hand fine motor activities. then : ")
                
                Text("Consider to provide a Flexor digitorum superficialis Dynamic  Splint")
                
            }.frame(width: 350, height: 250, alignment: .center)
            
        }.padding(.bottom, 23)
    }  
}

struct TendonSplintNine_Previews: PreviewProvider {
    static var previews: some View {
        TendonSplintNine()
    }
}
