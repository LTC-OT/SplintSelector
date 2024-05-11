//
//  TendonSelector.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-03-22.
//

import SwiftUI
class TendonClient: ObservableObject {
    @Published var type: Int = 0
    @Published var region: Int = 0
    @Published var structure: Int = 0
    
}

struct TendonSelector: View {
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject  var client = TendonClient()
    
    var structures = [
        "None",
        "Extensor Digitorum Communis",
        "Extensor pollicis Longus",
        "Mallet finger",
        "Boutonniere Deformity",
        "Volar plate avulsion",
        "Trigger finger",
        "Flexor pollicis longus",
        "Flexor digitorum profundus",
        "Flexor digitorum superficialis",
        "Flexor Carpi ulnaris",
        "Flexor Carpi radialis",
        "Quadeiceps tendon",
        "Aquilles tendonitis",
        "Posterior Tibial tendonitis",
        "Peroneal Tendontis"
        
        
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
                                NavigationLink(destination: TendonSplintOne()) {
                                    HStack {
                                        Image(systemName: "person.circle")
                                        Text("Press to see splint")
                                    }
                                }
                            }else if client.structure == 2 {
                                NavigationLink(destination: TendonSplintTwo()) {
                                    HStack {
                                        Image(systemName: "person.circle")
                                        Text("Press to see splint")
                                    }
                                }
                            }else if client.structure == 3 {
                                NavigationLink(destination: TendonSplintThree()) {
                                    HStack {
                                        Image(systemName: "person.circle")
                                        Text("Press to see splint")
                                    }
                                }
                            }else if client.structure == 4 {
                                NavigationLink(destination: TendonSplintFour()) {
                                    HStack {
                                        Image(systemName: "person.circle")
                                        Text("Press to see splint")
                                    }
                                }
                            }else if client.structure == 5 {
                                NavigationLink(destination: TendonSplintFive()) {
                                    HStack {
                                        Image(systemName: "person.circle")
                                        Text("Press to see splint")
                                    }
                                }
                            }else if client.structure == 6 {
                                NavigationLink(destination: TendonSplintSix()) {
                                    HStack {
                                        Image(systemName: "person.circle")
                                        Text("Press to see splint")
                                    }
                                }
                            }else if client.structure == 7 {
                                NavigationLink(destination: TendonSplintSeven()) {
                                    HStack {
                                        Image(systemName: "person.circle")
                                        Text("Press to see splint")
                                    }
                                }
                            }else if client.structure == 8 {
                                NavigationLink(destination: TendonSplintEight()) {
                                    HStack {
                                        Image(systemName: "person.circle")
                                        Text("Press to see splint")
                                    }
                                }
                            }else if client.structure == 9 {
                                NavigationLink(destination: TendonSplintNine()) {
                                    HStack {
                                        Image(systemName: "person.circle")
                                        Text("Press to see splint")
                                    }
                                }
                            }else if client.structure == 10 {
                                NavigationLink(destination: TendonSplintTen()) {
                                    HStack {
                                        Image(systemName: "person.circle")
                                        Text("Press to see splint")
                                    }
                                }
                            }else if client.structure == 11 {
                                NavigationLink(destination: TendonSplintEleven()) {
                                    HStack {
                                        Image(systemName: "person.circle")
                                        Text("Press to see splint")
                                    }
                                }
                            }else if client.structure == 12 {
                                NavigationLink(destination: TendonSplintTwelve()) {
                                    HStack {
                                        Image(systemName: "person.circle")
                                        Text("Press to see splint")
                                    }
                                }
                            }else if client.structure == 13 {
                                NavigationLink(destination: TendonSplintThirteen()) {
                                    HStack {
                                        Image(systemName: "person.circle")
                                        Text("Press to see splint")
                                    }
                                }
                            }else if client.structure == 14 {
                                NavigationLink(destination: TendonSplintFourteen()) {
                                    HStack {
                                        Image(systemName: "person.circle")
                                        Text("Press to see splint")
                                    }
                                }
                            }else if client.structure == 15 {
                                NavigationLink(destination: TendonSplintFifteen()) {
                                    HStack {
                                        Image(systemName: "person.circle")
                                        Text("Press to see splint")
                                    }
                                }
                            }else {Text("")}
                            
                        }
                        .navigationBarTitle("Splints for tendon Injuries selector", displayMode: .inline)
                }
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

struct TendonSelector_Previews: PreviewProvider {
    static var previews: some View {
        TendonSelector()
    }
}
