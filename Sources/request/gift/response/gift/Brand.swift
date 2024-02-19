//
//  Brand.swift
//  intergrated-billers
//

//

import Foundation

struct Brand: Codable {
    let id: Int
    let isActive: Bool
    let brandCode: String
    let pinRedeemable: Bool
    let name: String
    let logo: String
    let productImage: String
    let country: BrandCountry
    let validityInMonths: Int
    let variableAmount: Bool
    let denominations: Denominations
    let tagline: String
    let description: String
    let brandAcceptedCurrency: String
    let imageGallery: [ImageGallery]
    let redemptionType: String
    let redemptionInstructions: String
    let detailUrl: String
    let locationsUrl: String
    let categories: [BrandCategory]
    let redemptionInstruction: String
}
