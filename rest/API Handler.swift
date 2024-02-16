//
//  API Handler.swift
//  intergrated-billers
//

//

import Foundation

class ApiHandler {
    private let apiService: APIService
    
    init() {
        self.apiService = RetrofitClient.getRetrofit().create(APIService.self)
    }
    
    func getApiGatewayResponse(callback: @escaping (ServiceResponse?, Error?) -> Void) {
        let call = apiService.getApiGateway()
        call.enqueue { response, error in
            if let error = error {
                callback(nil, error)
            } else if let response = response, response.isSuccessful {
                callback(response.body(), nil)
            } else {
                let errorMessage = "Error: \(response?.code ?? 0)"
                let error = NSError(domain: "", code: 0, userInfo: [NSLocalizedDescriptionKey: errorMessage])
                callback(nil, error)
            }
        }
    }
}

