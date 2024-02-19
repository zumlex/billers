//
//  Brand Location Response.swift
//  intergrated-billers
//

//

import Foundation

struct BrandLocationResponse: Codable {
    let totalCount: Int
    let totalPage: Int
    let currentPage: Int
    let currentPageCount: Int
    let next: Any?
    let previous: Any?
    let brandName: String
    let retailers: Any?
    let cities: [City]
}

