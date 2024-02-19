//
//  List Transfer Record.swift
//  intergrated-billers
//

//

import Foundation

struct ListTransferRecord: Codable {
    let resultCode: Int?
    let errorCodes: [ErrorCode]?
    let items: [ListTransferRecordItem]?
    let thereAreMoreItems: Bool?

    private enum CodingKeys: String, CodingKey {
        case resultCode = "ResultCode"
        case errorCodes = "ErrorCodes"
        case items = "Items"
        case thereAreMoreItems = "ThereAreMoreItems"
    }
}

