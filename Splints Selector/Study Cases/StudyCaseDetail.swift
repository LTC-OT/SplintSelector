//
//  StudyCaseDetail.swift
//  Splints Selector
//
//  Created by Jaime Fagnilli on 2024-05-11.
//

import SwiftUI

struct StudyCaseDetail: View {
    
    var studyCase: StudyCases
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 5) {
                Section(header: Text("Resident Information").font(.title2).bold().foregroundColor(Color.accentColor)) {
                    Text("Case Scenario: ").font(.headline).bold()
                    Text("\(studyCase.caseScenario)").foregroundColor(Color.secondary).bold()
                    Text("Diagnostic ").font(.headline).bold()
                    Text("\(studyCase.diagnostic)").foregroundColor(Color.secondary).bold()
                    Text("Medical History:").font(.headline).bold()
                    Text("\(studyCase.medicalFindings)").foregroundColor(Color.secondary).bold()
                }.padding(5).padding(.horizontal, 5)
                
                Section(header: Text("Splint").font(.title2).bold().foregroundColor(Color.accentColor)) {
                    Text("Recommended Splint:").font(.headline).bold()
                    Text("\(studyCase.recommendedSplint)").foregroundColor(Color.secondary).bold()
                    Text("Splint description:").font(.headline).bold()
                    Text("\(studyCase.descriptionOfTheSplint)").foregroundColor(Color.secondary).bold()
                    Text("Criteria:").font(.headline).bold()
                    Text("\(studyCase.criteria)").foregroundColor(Color.secondary).bold()
                }.padding(5).padding(.horizontal, 5)
                
                Section(header: Text("Image of the Splint").font(.title2).bold().foregroundColor(Color.accentColor)) {
                    Image(studyCase.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 320, height: 320, alignment: .center)
                    
                    
                }
            }
            .padding()
            .padding(.top, 40)
            .padding(.horizontal, 20)
        }
        .navigationBarTitle("Case Details")
    }
}

#Preview {
    StudyCaseDetail(studyCase: studyData[0])
}

