//
//  TimeLineModel.swift
//  Splints
//
//  Created by Jaime Fagnilli on 2021-02-15.
//

import SwiftUI

// MARK: TIME LINE MODEL

struct TimeLine: Identifiable {
  var id = UUID()
  var image: String
  var stage: String
  var title: String
  var description: String
  var timeline: String
  var instruction: String
}

