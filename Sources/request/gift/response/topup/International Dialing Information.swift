//
//  International Dialing Information.swift
//  intergrated-billers
//

//

import Foundation

struct InternationalDialingInformation: Codable {
    let prefix: String?
    let minimumLength: Int?
    let maximumLength: Int?

    private enum CodingKeys: String, CodingKey {
        case prefix = "Prefix"
        case minimumLength = "MinimumLength"
        case maximumLength = "MaximumLength"
    }
}

