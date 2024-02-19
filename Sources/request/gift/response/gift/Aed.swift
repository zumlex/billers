//
//  Aed.swift
//  intergrated-billers
//

//

import Foundation

struct Aed: Codable {
    let amount: Int
    let isActive: Bool

    enum CodingKeys: String, CodingKey {
        case amount
        case isActive = "is_active"
    }
}

