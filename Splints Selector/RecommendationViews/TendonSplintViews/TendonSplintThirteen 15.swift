//
//  TendonSplintThirteen.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-04-02.
//

import SwiftUI

struct TendonSplintThirteen: View {
    @ObservedObject  var client = FractureClient()
    
    var body: some View {
        
        VStack {
            
            VStack(alignment: .center, spacing: 20) {
                Image("Achilles tendonitis")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 300, height: 300, alignment: .center)
                Text("Achilles tendonitis")
                    .font(.title)
                    .frame(width: 350, height: 50, alignment: .center)
            }
            
            VStack (alignment: .leading, spacing:  30){
                
                Text("Achilles tendonitis tends to be an acute (or quick-onset) condition lasting 6 weeks or less. Some practitioners view this diagnosis as the first in a continuum of tendon injuries that subsequently increase in severity. then : ")
                
                Text("Consider to provide a Achilles tendonitis Splint")
                
            }.frame(width: 235, height: 250, alignment: .center)
            
        }.padding(.bottom, 23)
    }
}

struct TendonSplintThirteen_Previews: PreviewProvider {
    static var previews: some View {
        TendonSplintThirteen()
    }
}
