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
                    Image("tabicon-branch")
                    Text("Splints")
                })
            
            ContentView()
                    .tabItem({
                      Image("tabicon-book")
                      Text("Features")
                    })
            RipeningStagesView()
                    .tabItem({
                      Image("tabicon-avocado")
                      Text("Ripening")
                    })
            SettingsView()
                    .tabItem({
                      Image("tabicon-settings")
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
