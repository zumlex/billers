//
//  Extra Fielda.swift
//  intergrated-billers
//

//

import Foundation

struct ExtraFields: Codable {
    let department: String
    let customerId: String
    let pi12: String
    
    enum CodingKeys: String, CodingKey {
        case department
        case customerId = "custuomer_id"
        case pi12
    }
}

