//
//  Product Item.swift
//  intergrated-billers
//

//

import Foundation

struct ProductItem: Codable {
    let providerCode: String?
    let skuCode: String?
    let localizationKey: String?
    let settingDefinitions: [SettingDefinition]?
    let maximum: Maximum?
    let minimum: Minimum?
    let commissionRate: Int?
    let processingMode: String?
    let redemptionMechanism: String?
    let benefits: [String]?
    let validityPeriodIso: String?
    let uatNumber: String?
    let additionalInformation: String?
    let defaultDisplayText: String?
    let regionCode: String?
    let paymentTypes: [String]?
    let lookupBillsRequired: Bool?
}

