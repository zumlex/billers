//
//  Country Item.swift
//  intergrated-billers
//

//

import Foundation

struct CountryItem: Codable {
    let countryIso: String
    let countryName: String
    let internationalDialingInformation: [InternationalDialingInformation]?
    let regionCodes: [String]?

    private enum CodingKeys: String, CodingKey {
        case countryIso = "CountryIso"
        case countryName = "CountryName"
        case internationalDialingInformation = "InternationalDialingInformation"
        case regionCodes = "RegionCodes"
    }
}

struct InternationalDialingInformation: Codable {
    // Define the properties for InternationalDialingInformation here if needed
    // For example:
    // let dialingCode: String
    // let countryCode: String
}

