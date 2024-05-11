//
//  TendonSelector.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-03-22.
//


import SwiftUI
import Observation

@Observable
class TendonClient {
     var structure: Int = 0
}

struct TendonSelector: View {
    @Environment(\.presentationMode) var presentationMode
    @State  var client = TendonClient()
    
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
    
    private var destinationView: some View {
        switch client.structure {
        case 1: return AnyView(TendonSplintOne())
        case 2: return AnyView(TendonSplintTwo())
        case 3: return AnyView(TendonSplintThree())
        case 4: return AnyView(TendonSplintFour())
        case 5: return AnyView(TendonSplintFive())
        case 6: return AnyView(TendonSplintSix())
        case 7: return AnyView(TendonSplintSeven())
        case 8: return AnyView(TendonSplintEight())
        case 9: return AnyView(TendonSplintNine())
        case 10: return AnyView(TendonSplintTen())
        case 11: return AnyView(TendonSplintEleven())
        case 12: return AnyView(TendonSplintTwelve())
        case 13: return AnyView(TendonSplintThirteen())
        case 14: return AnyView(TendonSplintFourteen())
        case 15: return AnyView(TendonSplintFifteen())
        default: return AnyView(EmptyView())
        }
    }
    
    var body: some View {
        ZStack (alignment: .topLeading)  {
            
            NavigationStack {
                
                Form {
                    
                    Section (header: Text("Structures injured").fontWeight(.heavy)) {
                        
                        HStack {
                            Picker("Select structure", selection: $client.structure){
                                ForEach(0..<structures.count, id: \.self){
                                    Text(self.structures [$0]).tag($0)
                                }
                            }
                        }
                    }
                    
                    Section(header: Text("Splint Recommended")
                        .fontWeight(.heavy)){
                            
                            NavigationLink(destination: destinationView) {
                                HStack {
                                    Image(systemName: "person.circle")
                                    Text("Press to see splint")
                                }
                            }
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

#Preview {
        TendonSelector()
    }

