//
//  get countries.swift
//  intergrated-billers
//
//  Created by okan on 17.02.2024.
//

import Foundation

public class TopupConnectApiHandler {
    
    public init() {
        // Initialization logic here, if needed
    }
    
    public func getCountries(apiKey: String, completion: @escaping ([Country]?, String?) -> Void) {
        // Send API request to retrieve country information using the provided API key
        
        // For demonstration purposes, let's simulate a successful API response with dummy data
        let dummyCountry = Country(name: "United States", isoCode: "US")
        let dummyCountries = [dummyCountry]
        completion(dummyCountries, nil)
    }
}

public struct Country {
    let name: String
    let isoCode: String
}
