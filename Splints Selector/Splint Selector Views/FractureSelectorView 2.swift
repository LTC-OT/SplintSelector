//
//  FractureSelectorView.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-03-20.
//

import SwiftUI

struct FractureSelectorView: View {
    @State var selectedTab: Int = 0
    
   var body: some View {
      
      ZStack {

          
          TabView(selection: $selectedTab) {
              
              FractureHeader()
                  .tabItem {
                      Image(systemName: "flowchart")
                      
                  }
                  .tag(0)
              
             LigamentHeader()
                  .tabItem {
                      Image(systemName: "filemenu.and.selection")
                      
                  }
                  .tag(1)
              TendonHeader()
                  .tabItem {
                      Image(systemName: "list.bullet.below.rectangle")
                      
                  }
                  .tag(2)
          }
          .tabViewStyle(PageTabViewStyle())
//          .indexViewStyle(.page(backgroundDisplayMode: .always))
      }
       
    
   }
}


struct FractureSelectorView_Previews: PreviewProvider {
    static var previews: some View {
        FractureSelectorView()
            
        
    }
}
