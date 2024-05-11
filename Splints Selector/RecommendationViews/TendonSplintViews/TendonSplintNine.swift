//
//  TendonSplintNine.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-04-01.
//

import SwiftUI

struct TendonSplintNine: View {
    @State var client = FractureClient()
    
    var body: some View {
        Form {
            Section {
                Image(.flexorDigitorumSuperficialis)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 300, height: 300, alignment: .center)
                Text("Flexor digitorum superficialis ")
                    .font(.title)
                    .frame(width: 350, height: 50, alignment: .center)
            }
            
            Section {
                
                Text("Flexor digitorum superficialis muscle weakness is associated with median nerve injury. Another common cause that can hamper FDS function is tendon injury. There are various treatment regimes based upon the causes of a decremental function of FDS affecting hand fine motor activities. then : ")
            }
            Section {
                
                Text("Consider to provide a Flexor digitorum superficialis Dynamic  Splint")
                
            }
        }
        
    }  
}

struct TendonSplintNine_Previews: PreviewProvider {
    static var previews: some View {
        TendonSplintNine()
    }
}
