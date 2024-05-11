//
//  HeaderModel.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2021-02-15.
//

import SwiftUI

// MARK: - HEADER MODEL

struct Header: Identifiable {
  var id = UUID()
  var image: String
  var headline: String
  var subheadline: String
}
