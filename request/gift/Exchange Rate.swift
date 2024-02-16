//
//  Exchange Rate.swift
//  intergrated-billers
//

//

import Foundation

struct ExchangeRate: Codable {
    let baseCurrency: String
    let targetCurrency: String
    let conversionRate: Double
    
    enum CodingKeys: String, CodingKey {
        case baseCurrency = "base_currency"
        case targetCurrency = "target_currency"
        case conversionRate = "conversion_rate"
    }
}

