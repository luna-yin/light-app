//
//  CrisisResourceModel.swift
//  Light
//
//  Created by Lucy and Luna Yin on 1/27/22.
//

import SwiftUI

// Struct for crisis aid resources
struct CrisisResourceModel: Identifiable {

    var id = UUID().uuidString
    var name: String
    var textNumber: String
    var telNumber: String
    var website: String
    var details: String
    
}

// Data for crisis resources
var crisisResourceList = [
    
    CrisisResourceModel(name: "Kids Help Phone", textNumber: "686868", telNumber: "17785365972", website: "https://kidshelpphone.ca", details: "Helpline for youth and kids to get support from a trained crisis responder, available 24/7. Text \"CONNECT\" to access support over iMessage."),
    CrisisResourceModel(name: "BC Division, Suicide Helpline", textNumber: "none", telNumber: "18007842433", website: "https://youthinbc.com/", details: "Local BC crisis line, crisis line workers are there to listen and support you as well as refer you to community resources."),
    CrisisResourceModel(name: "The Trevor Project", textNumber: "678678", telNumber: "18664887386", website: "https://thetrevorproject.org/get-help", details: "Confidential, 24/7 helpline for LGBTQ+ youth to contact professional counsellors. Text \"START\" to access support over iMessage."),
    CrisisResourceModel(name: "Victim Link BC", textNumber: "18005630808", telNumber: "18005630808", website: "https://www2.gov.bc.ca/gov/content/justice/criminal-justice/victims-of-crime/victimlinkbc", details: "Information and referral services for victims of crime and sexual violence"),
    CrisisResourceModel(name: "Battered Women's Support Services", textNumber: "6046521867", telNumber: "18556871868", website: "https://bwss.org/", details: "Confidential, 24/7 service providing support and safety planning to women experiencing gender-based domestic violence"),
    CrisisResourceModel(name: "WAVAW Rape Crisis Center", textNumber: "none", telNumber: "6042556344", website: "https://www.wavaw.ca/", details: "Offers support services to survivors of sexual assault including counselling, hospital accompaniment, and police and court accompaniment"),
    CrisisResourceModel(name: "Youth Against Violence Line", textNumber: "6048366381", telNumber: "18006804264", website: "none", details: "Anonymous and multilingual line to talk to a trained support worker about bullying, gang activity, harassment, intimidation, sexual exploitation, and other issues")
    
]
