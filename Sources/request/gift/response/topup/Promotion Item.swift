//
//  Promotion Item.swift
//  intergrated-billers
//

//

import Foundation

struct PromotionItem: Codable {
    let providerCode: String?
    let startUtc: String?
    let endUtc: String?
    let currencyIso: String?
    let validityPeriodIso: String?
    let minimumSendAmount: Int?
    let localizationKey: String?
}

