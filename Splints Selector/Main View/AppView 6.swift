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
                      Text("Features")
                    })
            TimeLineStagesView()
                    .tabItem({
                        Image(systemName: "hourglass")
                      Text("Time Line")
                    })
            SettingsView()
                    .tabItem({
                        Image(systemName: "slider.horizontal.3")
                      Text("Settings")
                    })
                }
                .accentColor(Color.primary)
            }
        }

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
        
            .previewDevice("iPhone 11")
            .environment(\.colorScheme, .dark)
        
    }
}
