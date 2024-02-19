//
//  Estimate Price.swift
//  intergrated-billers
//

//

import Foundation

struct EstimatePrice: Codable {
    let resultCode: Int?
    let errorCodes: [ErrorCode]?
    let items: [EstimatePriceItem]?

    private enum CodingKeys: String, CodingKey {
        case resultCode = "ResultCode"
        case errorCodes = "ErrorCodes"
        case items = "Items"
    }
}

