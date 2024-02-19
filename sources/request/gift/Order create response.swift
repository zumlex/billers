//
//  Order create response.swift
//  intergrated-billers
//

//

import Foundation

struct OrderCreateResponse: Codable {
    let referenceId: String
    let orderId: Int
    let state: Int
    let notify: Int
    let orderedAmount: OrderedAmount
    let extraFields: String
    let brandAcceptedAmount: BrandAcceptedAmount
    let exchangeRate: ExchangeRate
    let barcode: String
    let giftVoucher: [GiftVoucher]
    let expiryDate: String
    let redemptionInstructions: String
    let brandDetails: BrandDetails
    let receiverName: String
    let receiverEmail: String
    let receiverPhone: String
    let country: String
    let message: String
    let dateAdded: String
    let egiftCard: EgiftCard
}

