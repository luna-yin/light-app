//
//  CategoryModel.swift
//  Light
//
//  Created by Lucy and Luna Yin on 1/6/22.
//

import SwiftUI

// Struct for categories of resources
struct CategoryModel : Identifiable {
    
    var id = UUID().uuidString
    var name : String
    var numsources: Int
    var asset : String
    var resourceData : [ResourceModel]
}

// Data for categories
var categories = [
    
    CategoryModel(name: "Depression", numsources: depressionResourceData.count, asset: "CC 1", resourceData: depressionResourceData),
    CategoryModel(name: "Anxiety", numsources: anxietyResourceData.count, asset: "CC 2", resourceData: anxietyResourceData),
    CategoryModel(name: "Substance Use", numsources: substanceUseResourceData.count, asset: "CC 3", resourceData: substanceUseResourceData),
    CategoryModel(name: "LGBTQIA+", numsources: lgbtqResourceData.count, asset: "CC 4", resourceData: lgbtqResourceData),
    CategoryModel(name: "Bullying", numsources: bullyingResourceData.count, asset: "CC 1", resourceData: bullyingResourceData),
    CategoryModel(name: "Violence/Abuse", numsources: abuseResourceData.count, asset: "CC 2", resourceData: abuseResourceData),
    CategoryModel(name: "Sexual Health", numsources: sexualHealthResourceData.count, asset: "CC 3", resourceData: sexualHealthResourceData),
    CategoryModel(name: "Relationships", numsources: relationshipsResourceData.count, asset: "CC 4", resourceData: relationshipsResourceData),
    CategoryModel(name: "Body Image", numsources: bodyResourceData.count, asset: "CC 1", resourceData: bodyResourceData),
    CategoryModel(name: "Psychosis", numsources: psychosisResourceData.count, asset: "CC 2", resourceData: psychosisResourceData)
]
