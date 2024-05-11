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
            
            ZStack {
        
                Form {
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
                    }
                }
                .padding(.horizontal, 110)
                .ignoresSafeArea(.all)
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
    }
}
#Preview {
        SplintDetailView(splint: splintData[1])
           
    }

