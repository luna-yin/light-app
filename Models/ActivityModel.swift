//
//  ActivityModel.swift
//  Light
//
//  Created by Lucy and Luna Yin on 1/27/22.
//

import SwiftUI

// Struct for mindfulness activities
struct ActivityModel: Identifiable {
    
    var id = UUID().uuidString
    var image: String
    var name: String
    var time: Int
    var audio: String
}

// Data for mindfulness activities
var mindfulnessActivities = [
    ActivityModel(image: "AC 1", name: "Mindful Breathing", time: 5, audio: "mindfulbreathing"),
    ActivityModel(image: "AC 2", name: "Sitting Meditation", time: 10, audio: "sittingmeditation"),
    ActivityModel(image: "AC 3", name: "Body Scan", time: 10, audio: "bodyscan"),
    ActivityModel(image: "AC 4", name: "Breathing Space", time: 3, audio: "breathingspace"),
    ActivityModel(image: "AC 1", name: "Walking Meditation", time: 10, audio: "walkingmeditation"),
    ActivityModel(image: "AC 2", name: "Mindful Movement", time: 10, audio: "mindfulmovement"),
    ActivityModel(image: "AC 3", name: "Coping Space", time: 3, audio: "copingspace"),
    ActivityModel(image: "AC 4", name: "Kindness Meditation", time: 5, audio: "kindnessmeditation"),
]
