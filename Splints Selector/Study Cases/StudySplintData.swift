//
//  StudySplintData.swift
//  Splints Selector
//
//  Created by Jaime Fagnilli on 2024-03-03.
//

import Foundation
import SwiftUI

let studyData: [StudyCases] = [
    StudyCases(
        caseScenario: "Case Scenario: Emma, a 28-year-old recreational basketball player, collided with another player while going up for a layup. She experiences immediate pain and swelling in her right knee.",
        diagnostic: "Diagnostic: Upon evaluation at the hospital, Emma undergoes a series of diagnostic tests, including X-rays and an MRI scan. The imaging reveals a complete tear of the anterior cruciate ligament (ACL) in her right knee.",
        medicalFindings: "Medical Findings: During the medical examination, Emma exhibits significant instability in her right knee joint. The Lachman test and anterior drawer test are positive, confirming the diagnosis of an ACL tear. Additionally, the X-rays show no evidence of fractures or other bony abnormalities.",
        recommendedSplint: "Recommended Splint: The attending orthopedic surgeon recommends the , DonJoy Armor Professional Knee Brace for Emma.",
        descriptionOfTheSplint: "Description of the Splint: The DonJoy Armor Professional Knee Brace is a custom-fitted, hinged knee brace designed to provide maximum support and stability to the knee joint. It features rigid aluminum uprights, adjustable straps, and a patented four-point leverage system to prevent excessive movement and protect the injured ligament. The brace is lightweight and breathable, allowing for comfortable wear during physical activity.",
        criteria: "Reasoning and Criteria for Recommendation:The DonJoy Armor Professional Knee Brace is recommended for Emma due to its superior support and stabilization capabilities, which are crucial for managing a complete ACL tear. The brace's hinged design helps to limit excessive forward movement of the tibia relative to the femur, reducing the risk of further ligament damage and instability. Additionally, the customizable fit ensures optimal comfort and effectiveness, allowing Emma to resume her active lifestyle with reduced risk of recurrent injury.",
        image: "Knee Anterior Cruciate ligament"),
    
    StudyCases(
        caseScenario: "Case Scenario: Michael, a 42-year-old carpenter, fell from a ladder while working on a construction site and landed on his outstretched hand. He experiences severe pain and swelling in his left forearm.",
        diagnostic: "Diagnostic: X-rays reveal a displaced fracture of the distal radius in Michael's left forearm.",
        medicalFindings: "Medical Findings: Upon examination, there is visible deformity and tenderness over the fractured area. Michael has difficulty rotating his forearm and gripping objects due to the pain.",
        recommendedSplint: "Recommended Splint: The physician recommends a ,Sam Splint, for Michael's left forearm fracture.",
        descriptionOfTheSplint: "Description of the Splint: The Sam Splint is a malleable aluminum and foam splint that can be shaped to fit various limb injuries. It provides rigid support to the fractured forearm while allowing for adjustments to accommodate swelling and changes in limb shape.",
        criteria: "Reasoning and Criteria for Recommendation: The Sam Splint is chosen for its versatility and ability to provide immediate stabilization to Michael's fractured forearm. Its lightweight and moldable design make it suitable for emergency use, ensuring proper immobilization of the fracture site until further medical intervention can be provided.",
        image: "Short arm cast"),
    
    StudyCases(
        caseScenario: "Case Scenario: Jessica, a 30-year-old cyclist, was involved in a collision with a car and sustained a direct impact to her right leg. She presents to the emergency room with severe pain and inability to bear weight on her right lower limb.",
        diagnostic: "Diagnostic: X-rays confirm a comminuted fracture of the right tibia and fibula.",
        medicalFindings: "Medical Findings: Upon examination, there is significant swelling and deformity in Jessica's right lower leg. She experiences localized tenderness and an inability to move her ankle or toes.",
        recommendedSplint: "Recommended Splint: The orthopedic surgeon prescribes a Aquilles Fracture Orthosis Boot  for Jessica's fractured right lower leg.",
        descriptionOfTheSplint: "Description of the Splint: Orthosis Boot is an adjustable, vacuum-sealed leg brace designed to provide immobilization and support to lower limb fractures. It consists of a rigid shell with adjustable straps and a removable, inflatable liner that conforms to the shape of the leg for enhanced stability and comfort.",
        criteria: "Reasoning and Criteria for Recommendation: The Vacoped is selected for its ability to provide customizable immobilization and support to Jessica's complex lower limb fracture. Its vacuum-sealed design helps reduce swelling and promotes proper alignment of the fractured bones, facilitating the healing process and minimizing the risk of complications.",
        image: "Short leg shaft and distal"),
    
    StudyCases(
        caseScenario: "Case Scenario: Alex, a 35-year-old tennis player, experienced a sudden twisting motion in his right shoulder while serving during a match. He presents to the sports medicine clinic with persistent pain and instability in his shoulder joint.",
        diagnostic: "Diagnostic: Physical examination and MRI scans reveal a complete tear of the right shoulder's rotator cuff.",
        medicalFindings: "Medical Findings: During the examination, Alex demonstrates weakness and pain with overhead movements of his right arm. There is also palpable tenderness and swelling around the shoulder joint.",
        recommendedSplint: "Recommended Splint: The orthopedic specialist prescribes a Shoulder Abduction Sling for Alex's right shoulder injury.",
        descriptionOfTheSplint: "Description of the Splint: The Shoulder Abduction Sling is a soft, padded sling designed to immobilize the shoulder joint in a neutral position while allowing for controlled movement of the arm. It features adjustable straps and a comfortable foam cushion to provide support and relieve pressure on the injured shoulder.",
        criteria: "Reasoning and Criteria for Recommendation: The Shoulder Abduction Sling is recommended to restrict excessive movement of Alex's injured shoulder and prevent further stress on the torn rotator cuff. By maintaining the shoulder in a supported position, the sling helps alleviate pain and promotes optimal healing of the injured ligaments.",
        image: "RotatorCuffSplint"),
    
    StudyCases(
        caseScenario: "Case Scenario: David, a 25-year-old soccer player, twisted his left ankle during a game and experiences persistent pain and instability in the joint.",
        diagnostic: "Diagnostic: Clinical examination and MRI scans reveal a grade II sprain of the left ankle's lateral collateral ligament (LCL).",
        medicalFindings: "Medical Findings: Upon examination, David presents with swelling and tenderness along the lateral aspect of his left ankle. He experiences pain with weight-bearing and instability during movements that involve lateral motion of the foot.",
        recommendedSplint: "Recommended Splint: The sports medicine physician recommends an Aircast A60 Ankle Brace for David's left ankle sprain.",
        descriptionOfTheSplint: "Description of the Splint: The Aircast A60 Ankle Brace is a lightweight, low-profile brace designed to provide targeted support to the ankle joint. It features a stabilizing figure-eight strap system and molded plastic supports on both sides of the ankle to prevent excessive inversion and eversion movements.",
        criteria: "Reasoning and Criteria for Recommendation: The Aircast A60 Ankle Brace is chosen for its ability to stabilize and protect David's injured ankle ligament during athletic activities. Its lightweight and streamlined design allow for comfortable wear inside sports shoes, enabling David to return to playing soccer with reduced risk of re-injury.",
        image: "Ankle anterior talofibular splint"),
    
    StudyCases(
        caseScenario: "Case Scenario: Sophie, a 45-year-old pianist, experiences a sudden sharp pain in her right hand while practicing for an upcoming concert. She notices difficulty extending her fingers and experiences weakness in her grip.",
        diagnostic: "Diagnostic: Physical examination and ultrasound imaging reveal a partial tear of the extensor tendon in Sophie's right hand.",
        medicalFindings: "Medical Findings: During the examination, Sophie exhibits weakness and limited range of motion in her right hand and fingers. There is localized swelling and tenderness over the dorsal aspect of the hand.",
        recommendedSplint: "Recommended Splint: The hand surgeon prescribes a Stack Splint for Sophie's right hand tendon injury.",
        descriptionOfTheSplint: "Description of the Splint: The Stack Splint is a customizable, stackable splint system designed to provide dynamic extension assistance to injured finger joints. It consists of individual splint components that can be adjusted and layered to achieve the desired level of extension support.",
        criteria: "Reasoning and Criteria for Recommendation: The Stack Splint is recommended to facilitate Sophie's finger extension and promote healing of the partially torn extensor tendon in her right hand. Its dynamic design allows for gradual adjustment of extension force, helping Sophie regain finger mobility and strength while protecting the injured tendon from further strain.",
        image: "ExtensorTendon")
]
