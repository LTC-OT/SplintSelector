//
//  SplintRowView.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2021-04-11.
//

import SwiftUI

struct SplintRowView: View {
    @State private var isAnimatingImage: Bool = false
    var splint: Splint
    
    var body: some View {
        HStack   {
            VStack(alignment: .leading, spacing: 5) {
            ZStack {
                LinearGradient(gradient: Gradient(colors : [Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)), Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))]), startPoint : .top, endPoint : .bottomTrailing)
                
                Image(splint.image)
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFill()
                    .clipShape(Circle())
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.6), radius: 8, x: 6, y: 8)
                    .padding(.vertical, 20)
                    .scaleEffect(isAnimatingImage ? 1.0 : 0.2)
            }
            .frame(width: 100, alignment: .leading)
            .frame(height: 100)
            .clipShape(Circle())
            .onAppear() {
                withAnimation(.easeOut(duration: 0.5)) {
                    isAnimatingImage = true}}
            }
         
            VStack(alignment: .leading, spacing: 5) {
                Text(splint.title)
                    .font(.headline)
                    .foregroundColor(Color("ColorGreenMedium"))
                    .fontWeight(.bold)
                    .padding()
            }
        }
    }
}

struct SplintRowView_Previews: PreviewProvider {
    static var previews: some View {
        SplintRowView(splint: splintData[0])
        
            .previewLayout(.sizeThatFits)
            .padding()
            .environment(\.colorScheme, .dark)
        
    }
}
