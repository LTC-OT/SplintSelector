//
//  AppView.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2021-02-14.
//

import SwiftUI

struct AppView: View {
    @AppStorage("isDarkMode") private var isDarkMode = false
    @State private var isSheetPresented = false
    @State private var isSheetPresented1 = false
    
    var body: some View {
        NavigationStack{
            
            HomeViewScreen()
                .preferredColorScheme(isDarkMode ? .dark : .light)
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {
                            isSheetPresented = true}
                        ) {
                            Image(systemName: "gear")
                        }
                    }
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button(action: {
                            isSheetPresented1 = true
                        }) {
                            Image(systemName: "folder.badge.person.crop")
                        }
                    }
                }
                .sheet(isPresented: $isSheetPresented) {
                    ScreenSettings()
                    
                }
                .sheet(isPresented: $isSheetPresented1) {
                    StudyCaseView()
                    
                }
            
                .navigationBarTitle("")
            
                .navigationBarTitleDisplayMode(.inline)
        }
        
    }
}


#Preview  {
    AppView()
    
}

