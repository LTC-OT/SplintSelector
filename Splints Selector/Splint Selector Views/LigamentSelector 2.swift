//
//  LigamentSelector.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-03-22.
//

import SwiftUI
class LigamentClient: ObservableObject {
    
    @Published var type: Int = 0
    @Published var region: Int = 0
    @Published var structure: Int = 0
    
}

struct LigamentSelector: View {
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject  var client = LigamentClient()
    
    
    var structures = [
        "None",
        "Knee Anterior Cruciate ligament",
        "Knee Posterior cruciate ligament",
        "Knee Lateral Collateral Ligament",
        "Knee Medial Collateral ligament",
        "Knee Patella dislocation",
        "Ankle anterior talo/calcaneo fibular ligament",
        "Shoulder dislocation/ACL ",
        "Elbow Lateral/Medial ligament",
        "Radial/Ulnar wrist sprain ligaments",
        "Thumb ulnar collateral ligament",
        "Collateral ligament injury (usually at the PIP joint)",
        "Severe Fingers contracture in flexion",
        "Moderate/Mild Fingers contracture in flexion"
    ]
    
    var body: some View {
        ZStack (alignment: .topLeading)  {
          
            NavigationView {
                
                Form {
                    

                    Section (header: Text("Structures injured").fontWeight(.heavy)) {
                        VStack(alignment: .leading) {
                            Section {
                                HStack {
                                    Picker("Select structure", selection: $client.structure){
                                        ForEach(0..<structures.count, id: \.self){
                                            Text(self.structures [$0]).tag($0)
                                        }
                                    }
                                }
                            }
                        }
                    }
                    Section(header: Text("Splint Recommended")
                        .fontWeight(.heavy)){
                            if client.structure == 1 {
                                NavigationLink(destination: LigamentSplintOne()) {
                                    HStack {
                                        Image(systemName: "person.circle")
                                        Text("Press to see splint")
                                    }
                                }
                            } else if client.structure == 2 {
                                NavigationLink(destination: LigamentSplintTwo()) {
                                    HStack {
                                        Image(systemName: "person.circle")
                                        Text("Press to see splint")
                                    }
                                }
                            } else if client.structure == 3 {
                                NavigationLink(destination: LigamentSplintThree()) {
                                    HStack {
                                        Image(systemName: "person.circle")
                                        Text("Press to see splint")
                                    }
                                }
                            } else if client.structure == 4 {
                                NavigationLink(destination: LigamentSplintFour()) {
                                    HStack {
                                        Image(systemName: "person.circle")
                                        Text("Press to see splint")
                                    }
                                }
                            }else if client.structure == 5 {
                                NavigationLink(destination: LigamentSplintFive()) {
                                    HStack {
                                        Image(systemName: "person.circle")
                                        Text("Press to see splint")
                                    }
                                }
                            }else if client.structure == 6 {
                                NavigationLink(destination: LigamentSplintSix()) {
                                    HStack {
                                        Image(systemName: "person.circle")
                                        Text("Press to see splint")
                                    }
                                }
                            }else if client.structure == 7 {
                                NavigationLink(destination: LigamentSplintSeven()) {
                                    HStack {
                                        Image(systemName: "person.circle")
                                        Text("Press to see splint")
                                    }
                                }
                            }else if client.structure == 8 {
                                NavigationLink(destination: LigamentSplintEight()) {
                                    HStack {
                                        Image(systemName: "person.circle")
                                        Text("Press to see splint")
                                    }
                                }
                            }else if client.structure == 9 {
                                NavigationLink(destination: LigamentSplintNine()) {
                                    HStack {
                                        Image(systemName: "person.circle")
                                        Text("Press to see splint")
                                    }
                                }
                            }else if client.structure == 10 {
                                NavigationLink(destination: LigamentSplintEleven()) {
                                    HStack {
                                        Image(systemName: "person.circle")
                                        Text("Press to see splint")
                                    }
                                }
                            }else if client.structure == 11 {
                                NavigationLink(destination: LigamentSplintTwelve()) {
                                    HStack {
                                        Image(systemName: "person.circle")
                                        Text("Press to see splint")
                                    }
                                }
                            }else if client.structure == 12 {
                                NavigationLink(destination: LigamentSplintThirteen()) {
                                    HStack {
                                        Image(systemName: "person.circle")
                                        Text("Press to see splint")
                                    }
                                }
                            }else if client.structure == 13 {
                                NavigationLink(destination: LigamentSplintFourteen()) {
                                    HStack {
                                        Image(systemName: "person.circle")
                                        Text("Press to see splint")
                                    }
                                }
                    
                            }else {Text("")}
                        }
                }
                .navigationBarTitle("Splints for ligament Injuries selector", displayMode: .inline)
            }
            .padding(.top, 40)
            Button(action: {
                presentationMode.wrappedValue.dismiss()
                
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.primary)
                    .font(.headline)
                    .padding(20)
                
            })
        }
        
    }
}
struct LigamentSelector_Previews: PreviewProvider {
    static var previews: some View {
        LigamentSelector()
    }
}
