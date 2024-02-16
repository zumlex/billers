//
//  egift card.swift
//  intergrated-billers
//

//

import Foundation

struct EgiftCard: Codable {
    let url: String
    let giftVerificationPin: String
    
    enum CodingKeys: String, CodingKey {
        case url
        case giftVerificationPin
    }
}

