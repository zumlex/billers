//
//  estimatepricerequest.swift
//  intergrated-billers
//

//

import Foundation

struct EstimatePriceRequest: Codable {
    let sendValue: Int
    let sendCurrencyIso: String
    let receiveValue: Int
    let skuCode: String
    let batchItemRef: String
    
    enum CodingKeys: String, CodingKey {
        case sendValue = "SendValue"
        case sendCurrencyIso = "SendCurrencyIso"
        case receiveValue = "ReceiveValue"
        case skuCode = "SkuCode"
        case batchItemRef = "BatchItemRef"
    }
}

