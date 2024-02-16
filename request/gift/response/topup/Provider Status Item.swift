//
//  Provider Status Item.swift
//  intergrated-billers
//

//

import Foundation

struct ProviderStatusItem: Codable {
    let providerCode: String
    let isProcessingTransfers: Bool
    let message: String

    enum CodingKeys: String, CodingKey {
        case providerCode = "ProviderCode"
        case isProcessingTransfers = "IsProcessingTransfers"
        case message = "Message"
    }
}
