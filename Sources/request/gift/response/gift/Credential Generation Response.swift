//
//  Credential Generation Response.swift
//  intergrated-billers
//

//

import Foundation

struct CredentialsGenerationResponse: Codable {
    let dateAdded: String
    let apiKey: String
    let apiSecret: String
    let expiryDate: String
    let isActive: Bool
}

