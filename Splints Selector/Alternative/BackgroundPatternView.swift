//
//  BackgroundPatternView.swift
//  Splints Selector
//
//  Created by Jaime Fagnilli on 2024-05-11.
//
import SwiftUI

struct BackgroundPatternView: View {
    
    var body: some View {
        
        Circle()
            .foregroundColor(Color("ColorGreenMedium")).opacity(0.1)
            .frame(width: 600, height: 600)
            .offset(x:150, y: -450)
       
        Circle()
            .foregroundColor(Color("ColorGreenMedium")).opacity(0.2)
            .frame(width: 300, height: 300)
            .offset(x:-90, y: 450)
        
        Circle()
            .foregroundColor(Color("ColorGreenMedium")).opacity(0.3)
            .frame(width: 200, height: 200)
            .offset(x:-210, y: 290)
    }
}

#Preview {
    BackgroundPatternView()
}

