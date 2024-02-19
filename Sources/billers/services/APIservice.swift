//
//  APIservice.swift
//  intergrated-billers
//

//

import Foundation

protocol APIService {
    @GET("/")
    func getApiGateway(completion: @escaping (AFDataResponse<ServiceResponse>) -> Void)

    @GET("/")
    func getApiGatewayResponse<T>(completion: @escaping (AFDataResponse<T>) -> Void)
}
