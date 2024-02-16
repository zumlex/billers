//
//  Setting Definition.swift
//  intergrated-billers
//

//

import Foundation

struct SettingDefinition: Codable {
    let name: String
    let description: String
    let isMandatory: Bool

    enum CodingKeys: String, CodingKey {
        case name = "Name"
        case description = "Description"
        case isMandatory = "IsMandatory"
    }
}
