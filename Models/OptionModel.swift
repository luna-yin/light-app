//
//  OptionModel.swift
//  Light
//
//  Created by Lucy and Luna Yin on 1/27/22.
//

import SwiftUI

// Struct for options in quiz
struct Option: Identifiable {
    var id = UUID()
    var text: String
    var category: CategoryModel
}
