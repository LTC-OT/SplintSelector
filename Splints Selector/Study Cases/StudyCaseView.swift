//
//  StudyCaseView.swift
//  Splints Selector
//
//  Created by Jaime Fagnilli on 2024-03-03.
//

import SwiftUI



struct StudyCaseView: View {
    @State var studyCases: [StudyCases] = studyData
 
    
    @State private var selectedStudyCase: StudyCases?
    @State private var isDetailViewPresented: Bool = false
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        
        NavigationView {
           
            ZStack {
                Circle()
                    .foregroundColor(Color("ColorGreenMedium")).opacity(0.1)
                    .offset(x:150, y: -450)
                Circle()
                    .foregroundColor(Color("ColorGreenMedium")).opacity(0.1)
                    .offset(x:-90, y: 450)
                Circle()
                    .foregroundColor(Color("ColorGreenMedium")).opacity(0.1)
                    .offset(x:-210, y: 20)
                

                ScrollView (.vertical, showsIndicators: false){
                   
                    LazyVGrid(columns: columns, spacing: 10) {
                        ForEach(studyCases) { item in
                            Button(action: {
                                selectedStudyCase = item
                                isDetailViewPresented.toggle()
                            }, label: {
                                
                                VStack(alignment: .center, spacing: 10) {
                                    // CARD IMAGE
                                    Image(item.image)
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 180, height: 120, alignment: .center)
                                        .clipShape(Circle())
                                        .padding(.top)
                                        .shadow(color: isDetailViewPresented ? .gray.opacity(0.5) : .black.opacity(0.5), radius: isDetailViewPresented ? 2 : 5, x: 5, y: isDetailViewPresented ? 2 : 5)
                                        .scaleEffect(isDetailViewPresented ? 0.99 : 1.0)
                                        .animation(.easeInOut(duration: 0.5), value: isDetailViewPresented)
                                    
                                    
                                    
                                    
                                    // HEADLINE
                                    Text(" Case Scenario")
                                    
                                        .font(.subheadline)
                                        .font(.system(.title, design: .serif))
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.accentColor)
                                        .padding()
                                    
                                    
                                }
                                .frame(width: 180, height: 190, alignment: .topLeading)
                                .foregroundColor(Color.accentColor)
                                .background(Color("ColorGreenMedium").cornerRadius(10).opacity(0.3))

                                .cornerRadius(25)
                            })
                            .sheet(isPresented: Binding(
                                get: { isDetailViewPresented },
                                set: { _ in isDetailViewPresented = false }
                            )) {
                                if let selectedStudyCase = selectedStudyCase {
                           
                                    StudyCaseInfograph(studyCase: selectedStudyCase)
//                                StudyCaseDetail(studyCase: selectedStudyCase)
                                        .presentationDragIndicator(.visible)

                                        .presentationDetents([.large])
                                }
                            }
                        }
                    }
                }
                .padding(.vertical, 50)
                .padding(.horizontal, 17)
            .navigationBarTitle("Study Cases", displayMode: .inline)
            }
            
        }
    }
    
}

#Preview {
    StudyCaseView(studyCases: studyData)
}

