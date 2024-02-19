//
//  Webhook.swift
//  intergrated-billers
//

//

struct Webhook: Codable {
    let id: Int
    let url: String
    let privateKey: String
    let isActive: Bool
}

