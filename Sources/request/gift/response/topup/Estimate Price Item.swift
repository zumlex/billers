//
//  Estimate Price Item.swift
//  intergrated-billers
//

//

import Foundation

struct EstimatePriceItem: Codable {
    let price: Price?
    let skuCode: String?
    let batchItemRef: String?
    let resultCode: Int?
    let errorCodes: [ErrorCode]?

    private enum CodingKeys: String, CodingKey {
        case price = "Price"
        case skuCode = "SkuCode"
        case batchItemRef = "BatchItemRef"
        case resultCode = "ResultCode"
        case errorCodes = "ErrorCodes"
    }
}
