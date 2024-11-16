//
//  ResourceModel.swift
//  Light
//
//  Created by Lucy and Luna Yin on 1/6/22.
//

import SwiftUI

// Struct for resources
struct ResourceModel: Identifiable {
    var id = UUID().uuidString
    var image: String
    var name: String
    var details: String
    var url: String
    var expand: Bool

}

// Data for resources
var depressionResourceData = [
    ResourceModel(image: "FoundryBC", name: "FoundryBC", details: "FoundryBC is run by the BC Children's Hospital and provides a wide range of online mental resources and services, as well as options for in-person counselling at various Foundry Centre locations", url: "https://foundrybc.ca/", expand: false),
    ResourceModel(image: "bouncebackb", name: "BounceBackBC", details: "Free online program for young adults (15+) to help handle anxiety, stress, worry, low mood, and more", url: "https://bouncebackbc.ca/", expand: false),
    ResourceModel(image: "walkalong", name: "WalkAlong", details: "Mindfulness and mental health exercises that help you focus on your journey to mental wellness", url: "https://www.walkalong.ca/explore", expand: false),
    ResourceModel(image: "studentsagainstdepression", name: "Students Against Depression", details: "Resources for students dealing with depression.", url: "https://www.studentsagainstdepression.org/", expand: false)
]

var anxietyResourceData = [
    ResourceModel(image: "AnxietyCanada", name: "Anxiety Canada", details: "A Canadian organization that provides a variety of resources and tools on their website for those with anxiety. This includes video and audio tools for guided meditation and calming activities.", url: "https://www.anxietycanada.com/", expand: false),
    ResourceModel(image: "FoundryBC", name: "FoundryBC", details: "FoundryBC is run by the BC Children's Hospital and provides a wide range of online mental resources and services, as well as options for in-person counselling at various Foundry Centre locations", url: "https://foundrybc.ca/", expand: false)
]

var substanceUseResourceData = [
    ResourceModel(image: "youthandvaping", name: "Youth and Vaping", details: "A detailed source of information compiled by the Government of Canada to aid youth in making informed choices about smoking and vaping.", url: "https://www.canada.ca/en/services/health/campaigns/vaping.html", expand: false),
    ResourceModel(image: "quitnow", name: "Quit Now", details: "An organization offering supports and information for those looking to quit smoking.", url: "https://quitnow.ca/", expand: false),
    ResourceModel(image: "drugcocktails", name: "Drug Cocktails", details: "Facts about mixing medicine, alcohol, and street drugs to help youth make safer, informed choices", url: "http://www.drugcocktails.ca/", expand: false),
    ResourceModel(image: "whatswithweed", name: "What's With Weed", details: "A website with information and interactive quizzes about weed and cannabis to help youth make better informed choices about substance use.", url: "https://www.whatswithweed.ca/", expand: false),
    ResourceModel(image: "youandsubstance", name: "You and Substance Use", details: "A workbook detailing substance use and how to best manage it, compiled and created", url: "https://www.heretohelp.bc.ca/workbook/you-and-substance-use-stuff-to-think-about-and-ways-to-make-changes", expand: false)
]

var lgbtqResourceData = [
    ResourceModel(image: "TheTrevorProject", name: "The Trevor Project", details: "The Trevor Project is the world’s largest suicide prevention and crisis intervention organization for lesbian, gay, bisexual, transgender, queer, and questioning (LGBTQ) young people.", url: "https://www.thetrevorproject.org/", expand: false),
    ResourceModel(image: "qmunity", name: "QMUNITY", details: "An organization educating about sexual and gender diversity through publications, one-on-one consultations, and interactive workshops for everyone from individuals and families to schools and businesses.", url: "https://qmunity.ca/", expand: false),
    ResourceModel(image: "transcarebc", name: "Trans Care BC", details: "Information and guidance on topics of trans identity, gender, and sexual orientation in relation to health and wellness, a branch of provincial health services authority.", url: "http://www.phsa.ca/transcarebc/", expand: false)
    
]

var relationshipsResourceData = [
    ResourceModel(image: "loveisrespect", name: "Love Is Respect", details: "Information and interactive quizzes for assessing your relationship, figuring out if its healthy or unhealthy, and finding the right supports if you need them.", url: "https://www.loveisrespect.org/", expand: false),
    ResourceModel(image: "thatsnotcool", name: "That's Not Cool", details: "Interactive website with tools and resources to help young people recognize, avoid and prevent dating violence", url: "https://thatsnotcool.com/", expand: false)
]

var bullyingResourceData = [
    ResourceModel(image: "thewhitehatter", name: "The White Hatter", details: "Tools and resources for staying safe online and combatting cyberbullying", url: "https://www.thewhitehatter.ca/", expand: false),
    ResourceModel(image: "cybersafe", name: "Cybersafe", details: "Blogs and articles on cybersecurity and information on various scams and dangerous online situations", url: "https://www.cybersafebc.ca/", expand: false),
    ResourceModel(image: "erase", name: "Erase", details: "Tools and resources from the Government of BC on the topic of bullying at school and other challenges for students", url: "https://www2.gov.bc.ca/gov/content/erase", expand: false),
    ResourceModel(image: "needhelpnow", name: "Need Help Now", details: "A site aiming to help teens stop the spread of sexual pictures or videos by offering guidance and support", url: "https://needhelpnow.ca/app/en/", expand: false),
]

var sexualHealthResourceData = [
    ResourceModel(image: "optionsforshealth", name: "Options for Sexual Health", details: "Free, pro-choice, sex-positive, and confidential sexual health services with clinics all across BC. Available Monday to Friday from 9am - 9pm through phone and email", url: "https://www.optionsforsexualhealth.org/", expand: false),
    ResourceModel(image: "checkyourself", name: "Check Yourself", details: "Resources and tools on sexual health for queer men", url: "https://www.checkyourself.today/", expand: false),
    ResourceModel(image: "itsaplan", name: "It's A Plan", details: "Options and guidance on contraceptives and sexual health", url: "https://www.itsaplan.ca/", expand: false),
    ResourceModel(image: "iud", name: "EC Emergency IUD Network", details: "Contact clinicians who can provide emergency contraception", url: "https://emergencyiud.com/", expand: false),
    ResourceModel(image: "scarleteen", name: "Scarleteen", details: "Inclusive and supportive information for teens and young adults on sexuality and relationships", url: "https://www.scarleteen.com/", expand: false),
    ResourceModel(image: "him", name: "Health Initiative For Men", details: "Non-profit society providing resources for gay men, including sexual health testing and professional counselling.", url: "https://checkhimout.ca/", expand: false),
    ResourceModel(image: "smartsexresource", name: "Smart Sex Resource", details: "Information and resources on sexual health. This website also provides opportunities to chat privately with a nurse.", url: "https://smartsexresource.com/", expand: false),
    ResourceModel(image: "cdc", name: "BC Centre for Disease Control", details: "Information on sexually transmitted infections and clinics that diagnose and treat it in British Columbia.", url: "http://www.bccdc.ca/our-services/our-clinics/sexually-transmitted-infections-clinics", expand: false),
    
]

var abuseResourceData = [
    ResourceModel(image: "saysomethingbc", name: "Say Something BC", details: "Website hosted by the BC government with statistics on abuse and violence, and information on legal support concerning domestic violence", url: "http://saysomethingbc.ca/", expand: false),
    ResourceModel(image: "cayac", name: "Child & Youth Advocacy Centres", details: "Services for children and youth who are victims or witnesses of crime in Canada, funded by the Canadian Department of Justice with locations across the country.", url: "https://cac-cae.ca/", expand: false),
    ResourceModel(image: "avp", name: "Anti-Violence Project", details: "Offers services to all people of all genders who have been impacted by gender-based violence", url: "https://www.antiviolenceproject.org/", expand: false),
    ResourceModel(image: "bcwhhc", name: "BC Women's Sexual Assault Service", details: "Providing care to people across Canada who are 13 or older and have been sexually assaulted within the past 7 days", url: "http://www.bcwomens.ca/our-services/specialized-services/sexual-assault-service", expand: false)
]

var bodyResourceData = [
    ResourceModel(image: "lookingglassfoundation", name: "Looking Glass Foundation", details: "The Looking Glass Foundation strives to support individuals struggling with eating disorders and disordered eating. ", url: "https://www.lookingglassbc.com/online-peer-support/", expand: false)
]

var psychosisResourceData = [
    ResourceModel(image: "earlypsychosis", name: "Early Psychosis Intervention", details: "A collective resource about Early Psychosis Intervention for the province of British Columbia. ", url: "https://www.earlypsychosis.ca/", expand: false)
]
