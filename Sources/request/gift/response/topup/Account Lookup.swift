//
//  Account Lookup.swift
//  intergrated-billers
//

//

import Foundation

struct AccountLookup: Codable {
    let countryIso: String
    let accountNumberNormalized: String
    let items: [AccountLookupItem]
    let resultCode: Int
    let errorCodes: [ErrorCode]
}

struct AccountLookupItem: Codable {
    // Define properties for AccountLookupItem if necessary
}

struct ErrorCode: Codable {
    // Define properties for ErrorCode if necessary
}
