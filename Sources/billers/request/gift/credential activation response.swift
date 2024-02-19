//
//  credential activation response.swift
//  intergrated-billers
//

//

import Foundation

struct CredentialActivationResponse: Codable {
    let state: Int
    let message: String
    
    enum CodingKeys: String, CodingKey {
        case state
        case message
    }
}

