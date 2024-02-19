//
//  Webhooks Activation Response.swift
//  intergrated-billers
//

//

struct WebhooksActivationResponse: Codable {
    let id: Int
    let url: String
    let privateKey: String
    let isActive: Bool
}

