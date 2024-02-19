//
//  Exchange Rate Response.swift
//  intergrated-billers
//

//

import Foundation

struct ExchangeRateResponse: Codable {
    let totalCount: Int?
    let totalPage: Int?
    let currentPage: Int?
    let currentPageCount: Int?
    let next: Any?
    let previous: Any?
    let exchangeRates: [CurrencyExchangeRate]?
}

