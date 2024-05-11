//
//  AppView.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2021-02-14.
//

import SwiftUI

struct AppView: View {
    
    var body: some View {
        
        TabView{
            SplintsView()
                .tabItem({
                    Image(systemName: "house")
                    Text("Splints")
                })
            
            ContentView()
                .tabItem({
                    Image(systemName: "book")
                    Text("Display")
                })
            FractureSelectorView()
                .tabItem({
                    Image(systemName: "selection.pin.in.out")
                    Text("Splint Selector")
                })
            TerminologyView()
                .tabItem({
                    Image(systemName: "list.bullet.rectangle.portrait")
                    Text("Catalog")
                })
        }
        
    }
}


struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
            
    }
}
