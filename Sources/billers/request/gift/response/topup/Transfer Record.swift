//
//  Transfer Record.swift
//  intergrated-billers
//

//

import Foundation

struct TransferRecord: Codable {
    let transferId: TransferId
    let skuCode: String
    let price: Price
    let commissionApplied: Int
    let startedUtc: String
    let completedUtc: String
    let processingState: String
    let receiptText: String
    let receiptParams: ReceiptParams
    let accountNumber: String

    enum CodingKeys: String, CodingKey {
        case transferId = "TransferId"
        case skuCode = "SkuCode"
        case price = "Price"
        case commissionApplied = "CommissionApplied"
        case startedUtc = "StartedUtc"
        case completedUtc = "CompletedUtc"
        case processingState = "ProcessingState"
        case receiptText = "ReceiptText"
        case receiptParams = "ReceiptParams"
        case accountNumber = "AccountNumber"
    }
}

