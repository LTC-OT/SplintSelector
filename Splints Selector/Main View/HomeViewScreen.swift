//
//  HomeViewScreen.swift
//  Splints Selector
//
//  Created by Jaime Fagnilli on 2024-02-25.
//

import SwiftUI

struct HomeViewScreen: View {
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

#Preview {
    HomeViewScreen()
}
