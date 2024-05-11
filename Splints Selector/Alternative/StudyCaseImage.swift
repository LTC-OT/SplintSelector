//
//  StudyCaseImage.swift
//  Splints Selector
//
//  Created by Jaime Fagnilli on 2024-05-11.
//
import SwiftUI

struct StudyCaseImage: View {
    var studyCase: StudyCases
      
       var isActive = false
    
    var body: some View {
      ZStack  {
            VStack (alignment: .leading, spacing: 10){
                Image ("")
                Image(studyCase.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 320, height: 320, alignment: .center)
                
            }
            .padding(.leading, 25)
            .padding(.trailing, 10)
            .frame(width: 180, height: 275, alignment: .center)
            .background(Color("ColorGreenMedium").cornerRadius(10).opacity(0.5))
            .cornerRadius(12)
            .multilineTextAlignment(.leading)
            .font(.footnote)
        .foregroundColor(Color.white)
            
            Image(systemName: "photo.circle.fill")
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
                .offset(x: -85, y: -130)
                
        }
    }
}

#Preview {
//    StudyCaseImage(studyCase: studyData[0])
    StudyCaseView()
}
