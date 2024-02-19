//
//  Transferld.swift
//  intergrated-billers
//

//

import Foundation

struct TransferId: Codable {
    let transferRef: String
    let distributorRef: String

    enum CodingKeys: String, CodingKey {
        case transferRef = "TransferRef"
        case distributorRef = "DistributorRef"
    }
}

