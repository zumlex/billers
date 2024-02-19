//
//  Topup Request.swift
//  intergrated-billers
//

//

import Foundation

struct TopupRequest: Codable {
    let currency: String
    let amount: Int
    let referenceId: String
}

