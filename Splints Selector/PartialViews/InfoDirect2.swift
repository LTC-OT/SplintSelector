//
//  InfoDirect2.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2023-02-11.
//

import SwiftUI

struct InfoDirect2: View {
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Image(systemName: "arrow.right")
                    Text("Scroll")
                    Image(systemName: "arrow.left")
                }
                .foregroundColor(.accentColor)
                
            }
        }
    }
}

struct InfoDirect2_Previews: PreviewProvider {
    static var previews: some View {
        InfoDirect2()
            .previewLayout(.sizeThatFits)
    }
}
