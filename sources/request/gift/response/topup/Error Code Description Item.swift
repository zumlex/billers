//
//  Error Code Description Item.swift
//  intergrated-billers
//

//

import Foundation

struct ErrorCodeDescriptionItem: Codable {
    let message: String
    let code: String

    private enum CodingKeys: String, CodingKey {
        case message = "Message"
        case code = "Code"
    }
}

