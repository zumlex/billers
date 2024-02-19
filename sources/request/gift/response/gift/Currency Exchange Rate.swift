//
//  Currency Exchange Rate.swift
//  intergrated-billers
//

//

import Foundation

struct CurrencyExchangeRate: Codable {
    let baseCurrency: String
    let conversionRates: ConversionRates
}

