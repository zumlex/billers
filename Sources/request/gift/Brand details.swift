//
//  File.swift
//  intergrated-billers
//

//

import Foundation

struct BrandDetails: Codable {
    let logo: String
    let productImage: String
    let code: String
    let pinRedeemable: Bool
    let name: String
    
    enum CodingKeys: String, CodingKey {
        case logo
        case productImage = "product_image"
        case code
        case pinRedeemable = "pin_redeemable"
        case name
    }
}

