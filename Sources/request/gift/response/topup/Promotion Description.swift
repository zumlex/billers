//
//  Promotion Description.swift
//  intergrated-billers
//

//

import Foundation

struct PromotionDescription: Codable {
    let resultCode: Int?
    let errorCodes: [ErrorCode]?
    let promotionDescriptionItems: [PromotionDescriptionItem]?
}

