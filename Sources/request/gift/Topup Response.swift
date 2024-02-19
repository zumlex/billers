//
//  Topup Response.swift
//  intergrated-billers
//

//

import Foundation

struct TopupResponse: Codable {
    let state: Int
    let balanceAmount: BalanceAmount
    let referenceId: String
    let topupId: Int
}

