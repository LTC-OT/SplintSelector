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
        
        NavigationView {
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


struct TerminologyView_Previews: PreviewProvider {
    static var previews: some View {
        TerminologyView()
        
          
    }
}
