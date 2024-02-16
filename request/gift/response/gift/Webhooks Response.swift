//
//  Webhooks Response.swift
//  intergrated-billers
//

//

struct WebhooksResponse: Codable {
    let totalCount: Int
    let totalPage: Int
    let currentPage: Int
    let currentPageCount: Int
    let next: String?
    let previous: String?
    let webhooks: [Webhook]
}

