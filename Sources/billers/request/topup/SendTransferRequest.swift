//
//  SendTransferRequest.swift
//  intergrated-billers
//

//

import Foundation

struct SendTransferRequest: Codable {
    let skuCode: String
    let sendValue: Int
    let sendCurrencyIso: String
    let accountNumber: String
    let distributorRef: String
    let settings: [Setting]
    let validateOnly: Bool
    let billRef: String
    
    enum CodingKeys: String, CodingKey {
        case skuCode = "SkuCode"
        case sendValue = "SendValue"
        case sendCurrencyIso = "SendCurrencyIso"
        case accountNumber = "AccountNumber"
        case distributorRef = "DistributorRef"
        case settings = "Settings"
        case validateOnly = "ValidateOnly"
        case billRef = "BillRef"
    }
}

