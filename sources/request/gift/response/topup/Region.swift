//
//  Region.swift
//  intergrated-billers
//

//

import Foundation

struct Region: Codable {
    let resultCode: Int
    let errorCodes: [Any]
    let regionItems: [RegionItem]

    enum CodingKeys: String, CodingKey {
        case resultCode
        case errorCodes
        case regionItems = "Items"
    }
}

struct RegionItem: Codable {
    // Define the properties of RegionItem if needed
}

