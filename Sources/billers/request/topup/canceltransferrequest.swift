//
//  canceltransferrequest.swift
//  intergrated-billers
//

//

import Foundation

struct CancelTransfersRequest: Codable {
    let transferId: TransferId
    let batchItemRef: String
    
    enum CodingKeys: String, CodingKey {
        case transferId = "TransferId"
        case batchItemRef = "BatchItemRef"
    }
}

