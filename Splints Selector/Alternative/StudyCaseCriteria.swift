//
//  StudyCaseCriteria.swift
//  Splints Selector
//
//  Created by Jaime Fagnilli on 2024-05-11.
//

import SwiftUI

struct StudyCaseCriteria: View {
    var studyCase: StudyCases
      
       var isActive = false
    
    var body: some View {
        ZStack {
            VStack (alignment: .leading, spacing: 10){
                Text("\(studyCase.criteria)")
                
            }
            .padding(.leading, 25)
            .padding(.trailing, 10)
            .frame(width: 380, height: 230, alignment: .center)
            .background(Color("ColorGreenMedium").cornerRadius(10).opacity(0.5))
            .cornerRadius(12)
            .multilineTextAlignment(.leading)
            .font(.footnote)
            .foregroundColor(Color.white)
            
            Image(systemName: "list.clipboard.fill")
                .resizable()
                .foregroundColor(.accentColor)
                .frame(width: 20, height: 20, alignment: .center)
                .clipShape(Circle())
                .symbolEffect(.pulse, options: .repeat(5))
            
            
                .background(
                    Circle()
                        .fill(Color.white)
                        .frame(width: 24, height: 24, alignment: .center)
                )
                .background(
                    Circle()
                        .fill(LinearGradient(gradient: Gradient(colors: [Color("ColorGreenMedium"), Color("ColorGreenLight")]), startPoint: .topTrailing, endPoint: .bottomTrailing))
                        .frame(width: 32, height: 32, alignment: .center)
                )
                .offset(x: -175, y: -110)
            
        }
    }
}

#Preview {
    StudyCaseCriteria(studyCase: studyData[0])

}
