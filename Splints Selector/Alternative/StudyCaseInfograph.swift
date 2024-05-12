//
//  StudyCaseInfograph.swift
//  Splints Selector
//
//  Created by Jaime Fagnilli on 2024-05-11.
//

import SwiftUI

struct StudyCaseInfograph: View {
    
  var studyCase: StudyCases
    
    var body: some View {
        ZStack {
            BackgroundPatternView()
            ScrollView {
                VStack(alignment: .center, spacing: 20) {
                    StudyCaseScenario(studyCase: studyCase)

                    
                HStack(spacing: 10) {
                        
                    StudyCaseHistory(studyCase: studyCase)

                        
                    VStack {
                            StudyCaseSplintRecommended(studyCase: studyCase)

                            StudyCaseImage(studyCase: studyCase)

                        }
                    }
                    .padding(.leading, 10)
                    
                    StudyCaseSplintDescription(studyCase: studyCase)

                    StudyCaseCriteria(studyCase: studyCase)

                }
                .padding()
                .padding(.top, 40)
                .padding(.horizontal, 20)
            }
            .navigationBarTitle("")
        }
    }
}

#Preview {
    StudyCaseInfograph(studyCase: studyData[0])

}


