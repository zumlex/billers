//
//  Setting.swift
//  intergrated-billers
//

//

import Foundation

struct Setting: Codable {
    let name: String
    let value: String
    
    enum CodingKeys: String, CodingKey {
        case name = "Name"
        case value = "Value"
    }
}

