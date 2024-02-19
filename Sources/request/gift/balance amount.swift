//
//  balance amount.swift
//  intergrated-billers
//

//

import Foundation

struct BalanceAmount: Codable {
    let currency: String
    let amount: Int
    
    enum CodingKeys: String, CodingKey {
        case currency
        case amount
    }
}

