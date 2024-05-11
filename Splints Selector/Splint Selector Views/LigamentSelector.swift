//
//  LigamentSelector.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2022-03-22.
//

import SwiftUI
import Observation

@Observable
class LigamentClient {
    
     var structure: Int = 0
    
}

struct LigamentSelector: View {
    @Environment(\.presentationMode) var presentationMode
    @State  var client = LigamentClient()
    
    
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
    
    private var destinationView: some View {
        switch client.structure {
        case 1: return AnyView(LigamentSplintOne())
        case 2: return AnyView(LigamentSplintTwo())
        case 3: return AnyView(LigamentSplintThree())
        case 4: return AnyView(LigamentSplintFour())
        case 5: return AnyView(LigamentSplintFive())
        case 6: return AnyView(LigamentSplintSix())
        case 7: return AnyView(LigamentSplintSeven())
        case 8: return AnyView(LigamentSplintEight())
        case 9: return AnyView(LigamentSplintNine())
        case 10: return AnyView(LigamentSplintEleven())
        case 11: return AnyView(LigamentSplintTwelve())
        case 12: return AnyView(LigamentSplintThirteen())
        case 13: return AnyView(LigamentSplintFourteen())
        default: return AnyView(EmptyView())
        }
    }
    
    
    var body: some View {
        ZStack (alignment: .topLeading)  {
            
            NavigationView {
                
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

#Preview {
        LigamentSelector()
    }

