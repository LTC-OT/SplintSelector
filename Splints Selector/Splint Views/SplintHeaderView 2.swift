//
//  SplintHeaderView.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2021-04-11.
//

import SwiftUI

struct SplintHeaderView: View {
    
    @State private var isAnimatingImage: Bool = false
    
    var splint: Splint

    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors : [Color("ColorGreenMedium"), Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))]), startPoint : .top, endPoint : .bottomTrailing)
            
            Image(splint.image)
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.6), radius: 8, x: 6, y: 8)
                .padding(.vertical, 20)
                .scaleEffect(isAnimatingImage ? 1.0 : 0.6)
               
            
        }
        .frame(height: 220)
        .clipShape(Circle())
        .onAppear() {
            withAnimation(.easeOut(duration: 0.8)) {
                isAnimatingImage = true
                
            }
        }
    }
}

struct SplintHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        SplintHeaderView(splint: splintData[0])
            .environment(\.colorScheme, .dark)
    }
}
