//
//  get error code description.swift
//  intergrated-billers
//
//  Created by okan on 17.02.2024.
//

import Foundation

public class TopupConnectApiHandler {
    
    public init() {
        // Initialization logic here, if needed
    }
    
    public func getErrorCodeDescriptions(apiKey: String, completion: @escaping ([ErrorCodeDescription]?, String?) -> Void) {
        // Send API request to retrieve descriptions for error codes using the provided API key
        
        // For demonstration purposes, let's simulate a successful API response with dummy data
        let dummyErrorCodeDescription = ErrorCodeDescription(errorCode: "123", description: "Error description")
        let dummyErrorCodeDescriptions = [dummyErrorCodeDescription]
        completion(dummyErrorCodeDescriptions, nil)
    }
}

public struct ErrorCodeDescription {
    let errorCode: String
    let description: String
}

