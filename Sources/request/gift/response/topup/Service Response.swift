//
//  Service Response.swift
//  intergrated-billers
//

//

import Foundation

struct ServiceResponse: Codable {
    let code: Int
    let message: String

    enum CodingKeys: String, CodingKey {
        case code
        case message
    }
}

