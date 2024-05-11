//
//  FractureSelectorView.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-03-20.
//

import SwiftUI

struct FractureSelectorView: View {
    @State var selectedTab: Int = 0
    
    var body: some View {
        NavigationView {
        ZStack {
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
            
            
            ScrollView( .horizontal, showsIndicators: false) {
                
                HStack {
                    FractureHeader()
                        .containerRelativeFrame(.horizontal)
                        .scrollTransition(axis: .horizontal ){ effect, phase in
                            effect
                                .scaleEffect(phase.isIdentity ? 1 : 0.5)
                        }
                    
                    LigamentHeader()
                        .containerRelativeFrame(.horizontal)
                        .scrollTransition(axis: .horizontal ){ effect, phase in
                            effect
                                .scaleEffect(phase.isIdentity ? 1 : 0.5)
                        }
                    TendonHeader()
                        .containerRelativeFrame(.horizontal)
                        .scrollTransition(axis: .horizontal ){ effect, phase in
                            effect
                                .scaleEffect(phase.isIdentity ? 1 : 0.5)
                        }
                }
                
            }//ScrollView
            .scrollTargetBehavior(.paging)
            .contentMargins(20, for: .scrollContent)
            
        }//ZSTACK
            
        .navigationBarTitle("Splints Selector", displayMode: .inline)
        
    }//NavigationView
    
   }
}


#Preview {
        FractureSelectorView()
            
        
    }

