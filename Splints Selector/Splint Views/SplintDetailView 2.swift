//
//  SplintDetailView.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2021-04-11.
//

import SwiftUI

struct SplintDetailView: View {
    var splint: Splint
    var body: some View {
        NavigationView {
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading, spacing: 70) {
                    Spacer()
                    SplintHeaderView(splint: splint)
                    VStack(alignment: .leading, spacing: 20) {
                        Text(splint.title)
                            .font(.title)
                            .fontWeight(.heavy)
                        
                        Text(" \(splint.title) details".uppercased())
                            .foregroundColor(Color("ColorGreenMedium"))
                            .fontWeight(.bold)
                        
                        Text(splint.description)
                            .multilineTextAlignment(.leading)
                    }
                    .padding(.leading)
                    .frame(maxWidth: 640, alignment: .leading)
                }
                .navigationBarTitle(splint.title, displayMode: .inline)
                .navigationBarHidden(true)
            }
            .padding()
            .edgesIgnoringSafeArea(.top)
        }
    }
}
struct SplintDetailView_Previews: PreviewProvider {
    static var previews: some View {
        SplintDetailView(splint: splintData[1])
            .previewDevice("iPhone 11")
    }
}
