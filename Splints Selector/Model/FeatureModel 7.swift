//
//  FeatureModel.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2021-02-15.
//
import Foundation
import SwiftUI

// MARK: - FEATURE MODEL

struct Feature: Identifiable, Hashable {
  var id = UUID()
  var title: String
  var headline: String
  var image: String
  var price: String
  var components: String
}
