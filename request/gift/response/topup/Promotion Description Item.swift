//
//  Promotion Description Item.swift
//  intergrated-billers
//

//

import Foundation

struct PromotionDescriptionItem: Codable {
    let dates: String?
    let headline: String?
    let termsAndConditionsMarkDown: String?
    let bonusValidity: String?
    let promotionType: String?
    let localizationKey: String?
    let languageCode: String?
    let sendAmounts: [SendAmount]?
}
