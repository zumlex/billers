//
//  Webhook Create Response.swift
//  intergrated-billers
//

//

import Foundation

struct WebhookCreateResponse: Codable {
    let id: Int
    let url: String
    let privateKey: String
    let isActive: Bool
}

