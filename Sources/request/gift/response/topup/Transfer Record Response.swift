//
//  Transfer Record Response.swift
//  intergrated-billers
//

//

import Foundation

struct TransferRecordResponse: Codable {
    let transferRecord: TransferRecord
    let resultCode: Int
    let errorCodes: [ErrorCode]

    enum CodingKeys: String, CodingKey {
        case transferRecord = "TransferRecord"
        case resultCode = "ResultCode"
        case errorCodes = "ErrorCodes"
    }
}

