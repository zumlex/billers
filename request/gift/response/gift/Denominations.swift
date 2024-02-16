//
//  Denominations.swift
//  intergrated-billers
//

//

import Foundation

struct Denominations: Codable {
    let lbp: [Lbp]?
    let usd: Usd?
    let qar: Qar?
    let bhd: Bhd?
    let aed: [Aed]?
    let gbp: Gbp?
    let sar: [Sar]?
    let eur: Eur?
}

