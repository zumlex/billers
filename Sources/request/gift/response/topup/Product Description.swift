//
//  Product Description.swift
//  intergrated-billers
//

//

import Foundation

struct ProductDescription: Codable {
    let resultCode: Int?
    let errorCodes: [ErrorCode]?
    let items: [ProductDescriptionItem]?
}


