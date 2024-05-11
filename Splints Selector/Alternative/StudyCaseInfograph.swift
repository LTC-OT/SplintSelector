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
//                   StudyCaseScenario()
                    
                HStack(spacing: 10) {
                        
                    StudyCaseHistory(studyCase: studyCase)
//                    StudyCaseHistory()
                        
                    VStack {
                            StudyCaseSplintRecommended(studyCase: studyCase)
//                        StudyCaseSplintRecommended()
                            StudyCaseImage(studyCase: studyCase)
//                        StudyCaseImage()
                        }
                    }
                    .padding(.leading, 10)
                    
                    StudyCaseSplintDescription(studyCase: studyCase)
//                    StudyCaseSplintDescription()
                    StudyCaseCriteria(studyCase: studyCase)
//                    StudyCaseCriteria()
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
//    StudyCaseInfograph()
}


