//
//  ListTransferRecordRequest.swift
//  intergrated-billers
//

//

import Foundation

struct ListTransferRecordRequest: Codable {
    let transferRef: String?
    let distributorRef: String?
    let accountNumber: String?
    let skip: Int?
    let take: Int?
    
    enum CodingKeys: String, CodingKey {
        case transferRef = "TransferRef"
        case distributorRef = "DistributorRef"
        case accountNumber = "AccountNumber"
        case skip = "Skip"
        case take = "Take"
    }
}

