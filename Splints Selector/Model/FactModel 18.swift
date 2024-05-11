//
//  FactModel.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2021-02-15.
//

import SwiftUI

// MARK: - FACT MODEL

struct Fact: Identifiable {
  var id = UUID()
  var image: String
  var content: String
}

