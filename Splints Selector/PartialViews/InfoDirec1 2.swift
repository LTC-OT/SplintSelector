//
//  InfoDirec1.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2023-02-11.
//

import SwiftUI

struct InfoDirec1: View {
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Image(systemName: "rectangle.righthalf.inset.filled.arrow.right")
                    Text("Scroll to the right ")
                }
                
            }
        }
    }
}

struct InfoDirec1_Previews: PreviewProvider {
    static var previews: some View {
        InfoDirec1()
            .previewLayout(.sizeThatFits)
    }
}
