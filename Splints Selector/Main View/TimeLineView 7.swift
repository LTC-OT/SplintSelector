//
//  TimeLineView.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2021-02-18.
//

import SwiftUI

struct TimeLineView: View {
    // MARK: PROPERTIES
    
    var timeline: TimeLine
    
    @State private var slideInAnimation: Bool = false
    
    var body: some View {
        VStack {
            Image(timeline.image)
                .resizable()
                .scaledToFit()
                .frame(width: 250, height: 230, alignment: .center)
                .clipShape(Circle())
                .background(
                    Circle()
                        .fill(Color("ColorGreenLight"))
                        .frame(width: 350, height: 250, alignment: .center)
                )
                .background(
                    Circle()
                        .fill(Color("ColorAppearanceAdaptive"))
                        .frame(width: 200, height: 200, alignment: .center)
                )
                .zIndex(1)
                .animation(.spring(response: 3.0, dampingFraction: 0.5, blendDuration: 2.0), value: slideInAnimation)
                .offset(y: slideInAnimation ? 55 : -55)
            
            
            VStack(alignment: .center, spacing: 10) {
                // STAGE
                VStack(alignment: .center, spacing: 0) {
                    Text(timeline.stage)
                        .font(.system(.largeTitle, design: .serif))
                        .fontWeight(.bold)
                    
                    Text("STAGE")
                        .font(.system(.body, design: .serif))
                        .fontWeight(.heavy)
                }
                .foregroundColor(Color("ColorGreenMedium"))
                .padding(.top, 65)
                .frame(width: 180)
                
                // TITLE
                Text(timeline.title)
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenMedium"))
                    .padding(.vertical, 12)
                    .padding(.horizontal, 0)
                    .frame(width: 220)
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .fill(LinearGradient(gradient: Gradient(colors: [Color.white, Color("ColorGreenLight")]), startPoint: .top, endPoint: .bottom))
                            .shadow(color: Color("ColorBlackTransparentLight"), radius: 6, x: 0, y: 6)
                    )
                
                
                // DESCRIPTION
                Spacer()
                Text(timeline.description)
                    .foregroundColor(Color("ColorGreenDark"))
                    .fontWeight(.heavy)
                    .lineLimit(nil)
                Spacer()
                
                // RIPENESS
                Text(timeline.timeline.uppercased())
                    .foregroundColor(Color.white)
                    .font(.system(.subheadline, design: .serif))
                    .fontWeight(.heavy)
                    .shadow(radius: 3)
                    .padding(.vertical,20)
                    .padding(.horizontal, 0)
                    .frame(width: 200)
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .fill(LinearGradient(gradient: Gradient(colors: [Color("ColorGreenMedium"), Color("ColorGreenDark")]), startPoint: .top, endPoint: .bottom))
                            .shadow(color: Color("ColorBlackTransparentLight"), radius: 6, x: 0, y: 6)
                    )
                // INSTRUCTION
                Text(timeline.instruction)
                    .font(.footnote)
                    .foregroundColor(Color("ColorGreenLight"))
                    .fontWeight(.heavy)
                    .lineLimit(5)
                    .frame(width: 200)
                Spacer()
            }
            .zIndex(0)
            .multilineTextAlignment(.center)
            .padding(.horizontal)
            .frame(width: 300, height: 500, alignment: .center)
            .background(LinearGradient(gradient: Gradient(colors: [Color("ColorGreenLight"), Color("ColorGreenMedium")]), startPoint: .top, endPoint: .bottom))
            .cornerRadius(20)
        }
        .edgesIgnoringSafeArea(.all)
        .onAppear(perform: {
            slideInAnimation = true
        })
        
    }
}


struct TimeLineView_Previews: PreviewProvider {
    static var previews: some View {
        TimeLineView(timeline: timelineData[1])
          
        
    }
}
