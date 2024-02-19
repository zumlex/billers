//
//  Credential.swift
//  intergrated-billers
//

//

import Foundation

struct Credential: Codable {
    let dateAdded: String
    let apiKey: String
    let apiSecret: String
    let expiryDate: String
    let isActive: Bool
}

