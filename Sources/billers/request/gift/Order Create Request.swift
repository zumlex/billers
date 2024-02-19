//
//  Order Create Request.swift
//  intergrated-billers
//

//

import Foundation

struct OrderCreateRequest: Codable {
    let referenceId: String
    let notify: Int
    let brandCode: String
    let currency: String
    let amount: Int
    let country: String
    let receiverName: String
    let receiverEmail: String
    let receiverPhone: String
    let message: String
    let extraFields: ExtraFields
    let deliveryLanguage: String
}

