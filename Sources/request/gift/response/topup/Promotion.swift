//
//  Promotion.swift
//  intergrated-billers
//

//

import Foundation

struct Promotion: Codable {
    let resultCode: Int?
    let errorCodes: [ErrorCode]?
    let promotionItems: [PromotionItem]?
}

