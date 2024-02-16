//
//  List Transfer Record Item.swift
//  intergrated-billers
//

//

import Foundation

struct ListTransferRecordItem: Codable {
    let transferRecord: TransferRecord?
    let resultCode: Int?
    let errorCodes: [ErrorCode]?

    private enum CodingKeys: String, CodingKey {
        case transferRecord = "TransferRecord"
        case resultCode = "ResultCode"
        case errorCodes = "ErrorCodes"
    }
}

