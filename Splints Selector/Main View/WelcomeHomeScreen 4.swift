//
//  WelcomeHomeScreen.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2023-02-19.
//

import SwiftUI

struct WelcomeHomeScreen: View {
    @State private var showDeveloperInfo = false
    var body: some View {
        VStack (alignment:.leading,spacing: 10){
            Text("Splint App's Sections:")
                .multilineTextAlignment(.center)
                .padding()
                .font(.title2)
                .padding()
            VStack (alignment: .leading, spacing: 0){
                Text("Display")
                    .multilineTextAlignment(.leading)
                    .font(.headline)
                Text("General display of types of splints with prices and detailed information about them")
                    .multilineTextAlignment(.leading)
            }
            VStack (alignment: .leading, spacing: 0){
                Text("Splint Selector")
                    .multilineTextAlignment(.leading)
                    .font(.headline)
                Text("Splint Selector Section with recommendations  of Splints dedicated  to address a variety of type of Fracture, Ligaments and Tendons injuries ")
                    .multilineTextAlignment(.leading)
            }
            VStack (alignment: .leading, spacing: 0){
                Text("Catalog")
                    .multilineTextAlignment(.leading)
                    .font(.headline)
                Text("A list of Pre-Fabricated Splints with detailed information of them  ")
                    .multilineTextAlignment(.leading)
            }
            
            VStack (alignment: .leading, spacing: 10){
                Text("Welcome to My App!")
                    .font(.headline)
                    .padding(.top, 50)
                Button(action: {
                    self.showDeveloperInfo = true
                }) {
                    Text("About the Developer")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
            }
            .sheet(isPresented: self.$showDeveloperInfo) {
                DeveloperInfoView()
            }
        }
        .padding()
    }
}

struct WelcomeHomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeHomeScreen()
    }
}
