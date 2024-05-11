//
//  FractureSelector.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-03-20.
//

import SwiftUI
import Observation

@Observable
class FractureClient {

     var structure: Int = 0
    
}

struct FractureSelector: View {
    @Environment(\.presentationMode) var presentationMode
    @State var client = FractureClient()
    
    
    
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
    
    private var destinationView: some View {
        switch client.structure {
        case 1: return AnyView(FractureSplintOne())
        case 2: return AnyView(FractureSplintTwo())
        case 3: return AnyView(FractureSplintThree())
        case 4: return AnyView(FractureSplintFour())
        case 5: return AnyView(FractureSplintFive())
        case 6: return AnyView(FractureSplintSix())
        case 7: return AnyView(FractureSplintSeven())
        case 8: return AnyView(FractureSplintEight())
        case 9: return AnyView(FractureSplintNine())
        case 10: return AnyView(FractureSplintTen())
        case 11: return AnyView(FractureSplintEleven())
        case 12: return AnyView(FractureSplintTwelve())
        case 13: return AnyView(FractureSplintThirteen())
        case 14: return AnyView(FractureSplintFourteen())
        case 15: return AnyView(FractureSplintFifteen())
        default: return AnyView(EmptyView())
        }
    }
    
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
                            
                            NavigationLink(destination: destinationView) {
                                HStack {
                                    Image(systemName: "person.circle")
                                    Text("Press to see splint")
                                }
                            }
                        }
                    
                        .navigationBarTitle("Splints for fractures selector", displayMode: .inline)
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
        FractureSelector()
    }

