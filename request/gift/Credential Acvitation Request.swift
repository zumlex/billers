//
//  Credential Acvitation Request.swift
//  intergrated-billers
//

//

import Foundation

struct CredentialActivationRequest: Codable {
    let apiKey: String
    
    enum CodingKeys: String, CodingKey {
        case apiKey
    }
}

