//
//  TimeLineStagesView.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2021-02-18.
//

import SwiftUI

struct TimeLineStagesView: View {
    // MARK: - PROPERTIES
     
     var timelineStages: [TimeLine] = timelineData
     
     var body: some View {
       ScrollView(.horizontal, showsIndicators: false) {
         VStack {
           Spacer()
           HStack(alignment: .center, spacing: 25) {
             ForEach(timelineStages) { item in
               TimeLineView(timeline: item)
             }
           }
           .padding(.vertical)
           .padding(.horizontal, 25)
           Spacer()
         }
       }
       .edgesIgnoringSafeArea(.all)
     }
   }

struct TimeLineStagesView_Previews: PreviewProvider {
    static var previews: some View {
        TimeLineStagesView(timelineStages: timelineData)
    }
}
