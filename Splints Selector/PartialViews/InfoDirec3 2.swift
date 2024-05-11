//
//  InfoDirec3.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2023-02-11.
//

import SwiftUI

struct InfoDirec3: View {
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Image(systemName: "rectangle.lefthalf.inset.filled.arrow.left")
                    Text("Scroll to the left ")
                }
                .foregroundColor(.blue)            }
        }
    }
}

struct InfoDirec3_Previews: PreviewProvider {
    static var previews: some View {
        InfoDirec3()
            .previewLayout(.sizeThatFits)
    }
}
