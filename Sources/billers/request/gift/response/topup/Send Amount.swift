//
//  Send Amount.swift
//  intergrated-billers
//

//

import Foundation

struct SendAmount: Codable {
    let minimum: Int
    let maximum: Int
    let bonuses: [Bonuse]?

    enum CodingKeys: String, CodingKey {
        case minimum = "Minimum"
        case maximum = "Maximum"
        case bonuses = "Bonuses"
    }
}

