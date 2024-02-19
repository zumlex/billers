//
//  Balance.swift
//  intergrated-billers
//

//

import Foundation

struct Balance: Codable {
    let balance: Int
    let currencyIso: String
    let resultCode: Int
    let errorCodes: [ErrorCode]
}

