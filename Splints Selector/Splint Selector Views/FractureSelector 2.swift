//
//  FractureSelector.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-03-20.
//

import SwiftUI
class FractureClient: ObservableObject {
    @Published var type: Int = 0
    @Published var region: Int = 0
    @Published var structure: Int = 0
    
}

struct FractureSelector: View {
    @Environment(\.presentationMode) var presentationMode
    
    @ObservedObject  var client = FractureClient()
    
   
    var structures = [
        "None",
        "Fourth and fifth proximal/middle phalangeal shaft fractures/ metacarpal fractures",
        "Second and third proximal/middle phalangeal shaft fractures/ metacarpal fractures",
        "Injuries to scaphoid/trapezium Non-displaced, non angulated/ extra-articular first metacarpal fractures/ stable thumb fractures",
        "Extensor tendon avulsion from the base of the distal phalanx",
        "Soft tissue injuries to hand and wrist/carpal bone fractures",
        "Non-displaced proximal/middle phalangeal shaft fracture and sprains",
        "Distal phalangeal fracture",
        "Middle phalangeal volar plate avulsions and stable reduced PIP joint dislocations",
        "Non displaced, minimally displaced, or buckle fractures of the distal radiusCarpal bone fractures other than scaphoid/trapezium ",
        "Distal humeral and proximal/mid shaft forearm fractures Non buckle wrist fractures",
        "Acute elbow and forearm fractures, and non displaced, extra-articular Colles fractures",
        "Acute soft tissue and bony injuries of the lower extremity",
        "Distal metatarsal and phalangeal fractures",
        "Isolated, non displaced malleolar fractures or acute foot fractures",
        "Acute foot fracture/ severe sprains then"
    ]
    
    var body: some View {
        
        ZStack (alignment: .topLeading) {
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
                                NavigationLink(destination: FractureSplintOne()) {
                                    HStack {
                                        Image(systemName: "person.circle")
                                        Text("Press to see splint")
                                    }
                                }
                            } else if client.structure == 2 {
                                NavigationLink(destination: FractureSplintTwo()) {
                                    HStack {
                                        Image(systemName: "person.circle")
                                        Text("Press to see splint")
                                    }
                                }
                            } else if client.structure == 3 {
                                NavigationLink(destination: FractureSplintThree()) {
                                    HStack {
                                        Image(systemName: "person.circle")
                                        Text("Press to see splint")
                                    }
                                }
                            } else if client.structure == 4 {
                                NavigationLink(destination: FractureSplintFour()) {
                                    HStack {
                                        Image(systemName: "person.circle")
                                        Text("Press to see splint")
                                    }
                                }
                            }else if client.structure == 5 {
                                NavigationLink(destination: FractureSplintFive()) {
                                    HStack {
                                        Image(systemName: "person.circle")
                                        Text("Press to see splint")
                                    }
                                }
                            }else if client.structure == 6 {
                                NavigationLink(destination: FractureSplintSix()) {
                                    HStack {
                                        Image(systemName: "person.circle")
                                        Text("Press to see splint")
                                    }
                                }
                            }else if client.structure == 7 {
                                NavigationLink(destination: FractureSplintSeven()) {
                                    HStack {
                                        Image(systemName: "person.circle")
                                        Text("Press to see splint")
                                    }
                                }
                            }else if client.structure == 8 {
                                NavigationLink(destination: FractureSplintEight()) {
                                    HStack {
                                        Image(systemName: "person.circle")
                                        Text("Press to see splint")
                                    }
                                }
                            }else if client.structure == 9 {
                                NavigationLink(destination: FractureSplintNine()) {
                                    HStack {
                                        Image(systemName: "person.circle")
                                        Text("Press to see splint")
                                    }
                                }
                            }else if client.structure == 10 {
                                NavigationLink(destination: FractureSplintTen()) {
                                    HStack {
                                        Image(systemName: "person.circle")
                                        Text("Press to see splint")
                                    }
                                }
                            }else if client.structure == 11 {
                                NavigationLink(destination: FractureSplintEleven()) {
                                    HStack {
                                        Image(systemName: "person.circle")
                                        Text("Press to see splint")
                                    }
                                }
                            }else if client.structure == 12 {
                                NavigationLink(destination: FractureSplintTwelve()) {
                                    HStack {
                                        Image(systemName: "person.circle")
                                        Text("Press to see splint")
                                    }
                                }
                            }else if client.structure == 13 {
                                NavigationLink(destination: FractureSplintThirteen()) {
                                    HStack {
                                        Image(systemName: "person.circle")
                                        Text("Press to see splint")
                                    }
                                }
                            }else if client.structure == 14 {
                                NavigationLink(destination: FractureSplintFourteen()) {
                                    HStack {
                                        Image(systemName: "person.circle")
                                        Text("Press to see splint")
                                    }
                                }
                            }else if client.structure == 15 {
                                NavigationLink(destination: FractureSplintFifteen()) {
                                    HStack {
                                        Image(systemName: "person.circle")
                                        Text("Press to see splint")
                                    }
                                }
                            }else {Text("")}
                        
                        
                        
                    }
                }//FORM
                .navigationBarTitle("Splints for fractures selector", displayMode: .inline)
            }//NAVIGATIONVIEW
            .padding(.top, 40)
            Button(action: {
                presentationMode.wrappedValue.dismiss()
                
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.primary)
                    .font(.headline)
                    .padding(20)
                
            })
        }//ZSTACK
        
    }
}

struct FractureSelector_Previews: PreviewProvider {
    static var previews: some View {
        FractureSelector()
    }
}
