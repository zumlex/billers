//
//  Cancel Transfer.swift
//  intergrated-billers
//

//

import Foundation

struct CancelTransfer: Codable {
    let items: [CancelTransferItem]
    let resultCode: Int
    let errorCodes: [ErrorCode]
}

