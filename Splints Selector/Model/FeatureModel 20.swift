//
//  FeatureModel.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2021-02-15.
//

import SwiftUI

// MARK: - FEATURE MODEL

struct Feature: Identifiable {
  var id = UUID()
  var title: String
  var headline: String
  var image: String
  var price: Int
  var instructions: [String]
  var components: [String]
}
