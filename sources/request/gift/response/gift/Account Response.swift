//
//  Account Response.swift
//  intergrated-billers
//

//

import Foundation

struct AccountResponse: Codable {
    let account: String
    let balanceAmount: BalanceAmount
    let customSmsMessage: String
    let orderValidityMonth: String

    enum CodingKeys: String, CodingKey {
        case account
        case balanceAmount = "balance_amount"
        case customSmsMessage = "custom_sms_message"
        case orderValidityMonth = "order_validity_month"
    }
}

