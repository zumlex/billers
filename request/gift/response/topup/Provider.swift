//
//  Provider.swift
//  intergrated-billers
//

//

import Foundation

struct Provider: Codable {
    let resultCode: Int?
    let errorCodes: [ErrorCode]?
    let providerItems: [ProviderItem]?
}

