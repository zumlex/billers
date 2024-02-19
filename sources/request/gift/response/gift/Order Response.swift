//
//  Order Response.swift
//  intergrated-billers
//

//

struct OrderResponse: Codable {
    let totalCount: Int
    let totalPage: Int
    let currentPage: Int
    let currentPageCount: Int
    let next: String
    let previous: Any?
    let orders: [Order]
}

