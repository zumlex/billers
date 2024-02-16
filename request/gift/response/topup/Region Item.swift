//
//  Region Item.swift
//  intergrated-billers
//

//

import Foundation

struct RegionItem: Codable {
    let regionCode: String
    let regionName: String
    let countryIso: String

    enum CodingKeys: String, CodingKey {
        case regionCode = "RegionCode"
        case regionName = "RegionName"
        case countryIso = "CountryIso"
    }
}

