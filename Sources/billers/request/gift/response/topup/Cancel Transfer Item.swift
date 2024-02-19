//
//  Cancel Transfer Item.swift
//  intergrated-billers
//

//

import Foundation

struct CancelTransferItem: Codable {
    let transferId: TransferId
    let processingState: String
    let batchItemRef: String
    let resultCode: Int
    let errorCodes: [ErrorCode]
}

