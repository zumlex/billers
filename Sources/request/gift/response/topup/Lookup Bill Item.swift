//
//  Lookup Bill Item.swift
//  intergrated-billers
//

//

import Foundation

struct LookupBillItem: Codable {
    let price: Price?
    let billRef: String?
    let additionalInfo: AdditionalInfo?

    private enum CodingKeys: String, CodingKey {
        case price = "Price"
        case billRef = "BillRef"
        case additionalInfo = "AdditionalInfo"
    }
}
