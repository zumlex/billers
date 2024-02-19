//
//  Currency.swift
//  intergrated-billers
//

//

import Foundation

struct Currency: Codable {
    let resultCode: Int?
    let errorCodes: [Any]?
    let items: [CurrencyItem]?
}

