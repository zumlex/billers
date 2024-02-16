//
//  ReceiptParams.swift
//  intergrated-billers
//

//

import Foundation

struct ReceiptParams: Codable {
    let property1: String
    let property2: String

    enum CodingKeys: String, CodingKey {
        case property1
        case property2
    }
}
n
