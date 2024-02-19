//
//  Webhooks Deactivation Response.swift
//  intergrated-billers
//

//

struct WebhooksDeactivationResponse: Codable {
    let id: Int
    let url: String
    let privateKey: String
    let isActive: Bool
}

