//
//  StudySplintModel.swift
//  Splints Selector
//
//  Created by Jaime Fagnilli on 2024-03-03.
//

import Foundation
import SwiftUI


struct StudyCases: Identifiable, Hashable {
    
    var id = UUID()
    var caseScenario: String
    var diagnostic: String
    var medicalFindings: String
    var recommendedSplint: String
    var descriptionOfTheSplint: String
    var criteria: String
    var image: String
}

