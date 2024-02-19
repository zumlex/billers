//
//  Country.swift
//  intergrated-billers
//

//

import Foundation

struct Country: Codable {
    let resultCode: Int
    let errorCodes: [Any]?
    let items: [CountryItem]

    private enum CodingKeys: String, CodingKey {
        case resultCode, errorCodes, items
    }
}

struct CountryItem: Codable {
    // Define the properties for CountryItem here if needed
    // For example:
    // let countryCode: String
    // let countryName: String
}

