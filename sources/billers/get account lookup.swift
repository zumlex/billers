//
//  get account lookup.swift
//  intergrated-billers
//
//  Created by okan on 17.02.2024.
//

import Foundation

public class TopupConnectApiHandler {
    
    public init() {
        // Initialization logic here, if needed
    }
    
    public func getAccountLookup(accountNumber: String, apiKey: String, completion: @escaping (AccountLookup?, String?) -> Void) {
        // Send API request to retrieve account lookup information based on the specified parameters using the provided API key
        
        // For demonstration purposes, let's simulate a successful API response with dummy data
        let dummyAccountLookup = AccountLookup(accountNumber: accountNumber, countryCode: "US", regionCode: "regionCode", providerCode: "providerCode", isEligible: true)
        completion(dummyAccountLookup, nil)
    }
}

public struct AccountLookup {
    let accountNumber: String
    let countryCode: String
    let regionCode: String
    let providerCode: String
    let isEligible: Bool
}
