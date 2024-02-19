//
//  Provider Item.swift
//  intergrated-billers
//

//

import Foundation

struct ProviderItem: Codable {
    let providerCode: String
    let countryIso: String
    let name: String
    let shortName: String
    let validationRegex: String
    let customerCareNumber: String
    let regionCodes: [String]
    let paymentTypes: [String]
    let logoUrl: String
}

