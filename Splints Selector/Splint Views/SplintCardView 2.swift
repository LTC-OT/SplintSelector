//
//  SplintCardView.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2021-04-11.
//

import SwiftUI

struct SplintCardView: View {
    @State private var isAnimating: Bool = false
    var splint: Splint
    
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                
                Image(splint.image)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 300, height: 200, alignment: .center)
                
                    .shadow(color : Color(red : 0, green : 0, blue : 0, opacity : 0.6), radius: 8, x : 6, y : 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                
                Text(splint.title)
                    .foregroundColor(Color("ColorGreenMedium"))
                    .font(.title)
                    .fontWeight(.heavy)
                    .shadow(color : Color(red : 0, green : 0, blue : 0, opacity : 0.70), radius: 2, x : 2, y : 2)
            }
        }
        
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
    }
}

struct SplintCardView_Previews: PreviewProvider {
    static var previews: some View {
        SplintCardView(splint: splintData[0])
        
            .previewLayout(.fixed(width: 320, height: 640))
            .environment(\.colorScheme, .dark)
        
    }
}
