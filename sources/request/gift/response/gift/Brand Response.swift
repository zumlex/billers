//
//  Brand Response.swift
//  intergrated-billers
//

//

import Foundation

struct BrandResponse: Codable {
    let totalCount: Int
    let totalPage: Int
    let currentPage: Int
    let currentPageCount: Int
    let next: String
    let previous: Any?
    let brands: [Brand]
}

