//
//  SettingsView.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2021-02-14.
//

import SwiftUI

struct TerminologyView: View {
    var splints: [Splint] = splintData
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors : [Color(#colorLiteral(red: 0.2147935331, green: 0.2197707295, blue: 0.1936839223, alpha: 1)), Color(#colorLiteral(red: 0.7313602567, green: 0.8990362287, blue: 0.8663118482, alpha: 1))]), startPoint : .topLeading, endPoint : .bottomLeading)
                .edgesIgnoringSafeArea(.all)
            
            NavigationView    {
                
                List {
                    ForEach(splints) { item in
                        
                        
                        NavigationLink(
                            destination: SplintDetailView(splint: item)) {
                                SplintRowView(splint: item)
                                    .padding(.vertical, 4)
                            }
                    }
                }
                
                .navigationTitle("Features")
            }
        }
    }
}


struct TerminologyView_Previews: PreviewProvider {
    static var previews: some View {
        TerminologyView()
        
            .previewDevice("iPhone 11")
    }
}
