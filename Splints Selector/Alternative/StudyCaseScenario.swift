//
//  StudyCaseScenario.swift
//  Splints Selector
//
//  Created by Jaime Fagnilli on 2024-05-11.
//

import SwiftUI

struct StudyCaseScenario: View {
  
  
  var studyCase: StudyCases
    
     var isActive = false
  
    var body: some View {
        ZStack {
            VStack (alignment: .leading, spacing: 10){
                Text("\(studyCase.caseScenario)")
                
            }
            .padding(.leading, 25)
            .padding(.trailing, 10)
            .frame(width: 380, height: 90, alignment: .center)
            .background(LinearGradient(gradient: Gradient(colors: [Color("ColorGreenMedium"), Color("ColorGreenLight")]), startPoint: .topTrailing, endPoint: .bottomTrailing))
            .cornerRadius(12)
            .multilineTextAlignment(.leading)
            .font(.footnote)
        .foregroundColor(Color.white)
            
            Image(systemName: "flag.fill")
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
                .offset(x: -175, y: -50)
                
        }
    }
}

#Preview {
  StudyCaseScenario(studyCase: studyData[0])

   
}
