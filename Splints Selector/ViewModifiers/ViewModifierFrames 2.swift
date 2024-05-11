//
//  ViewModifierFrames.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-09-12.
//

import Foundation
import SwiftUI

struct Marco: ViewModifier {
    
    func body (content: Content) -> some View {
        content

            .frame( maxWidth: .infinity , maxHeight: .infinity, alignment: .leading)
            .multilineTextAlignment(.leading)
            .foregroundColor(.black)
            .padding()
            .background(.white)
            .cornerRadius(10)
            .shadow(color: .gray, radius: 3)
            .padding()
            .frame(width: 400, height: 250, alignment: .center)
    }
    
}

extension View {
  public  func frameStyle() -> some View {
        modifier(Marco())
    }
}

