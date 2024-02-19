//
//  Order Exchange Rate.swift
//  intergrated-billers
//

//

struct OrderExchangeRate: Codable {
    let baseCurrency: String
    let targetCurrency: String
    let conversionRate: Double
}

