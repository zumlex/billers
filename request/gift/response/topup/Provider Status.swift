//
//  Provider Status.swift
//  intergrated-billers
//

//

import Foundation

struct ProviderStatus: Codable {
    let resultCode: Int
    let errorCodes: [ErrorCode]
    let providerStatusItems: [ProviderStatusItem]

    enum CodingKeys: String, CodingKey {
        case resultCode, errorCodes, providerStatusItems = "Items"
    }
}

