//
//  Gift API Handler.swift
//  intergrated-billers
//

//

import Foundation

class GiftApiHandler {
    let giftApiService: GiftApiService
    
    init() {
        giftApiService = RetrofitClient.getRetrofit().create(giftApiService.self)
    }
    
    func getCurrencies(apiKey: String, completion: @escaping ApiResponseCallback<CurrencyResponse>) {
        let call = giftApiService.getCurrencies(apiKey: apiKey)
        enqueueCall(call: call, completion: completion)
    }
    
    func getAccount(apiKey: String, completion: @escaping ApiResponseCallback<AccountResponse>) {
        let call = giftApiService.getAccount(apiKey: apiKey)
        enqueueCall(call: call, completion: completion)
    }
    
    func searchOrderByGiftCode(apiKey: String, code: String, completion: @escaping ApiResponseCallback<OrderResponse>) {
        let call = giftApiService.searchOrderByGiftCode(apiKey: apiKey, code: code)
        enqueueCall(call: call, completion: completion)
    }
    
    func searchOrderByOrderId(apiKey: String, orderId: String, completion: @escaping ApiResponseCallback<OrderResponse>) {
        let call = giftApiService.searchOrderByOrderId(apiKey: apiKey, orderId: orderId)
        enqueueCall(call: call, completion: completion)
    }
    
    func listAllDigitalOrders(apiKey: String, notify: Bool, fromDate: String, toDate: String, completion: @escaping ApiResponseCallback<OrderResponse>) {
        let call = giftApiService.listAllDigitalOrders(apiKey: apiKey, notify: notify, fromDate: fromDate, toDate: toDate)
        enqueueCall(call: call, completion: completion)
    }
    
    func listOrdersPlacedInCountry(apiKey: String, country: String, fromDate: String, toDate: String, completion: @escaping ApiResponseCallback<OrderResponse>) {
        let call = giftApiService.listOrdersPlacedInCountry(apiKey: apiKey, country: country, fromDate: fromDate, toDate: toDate)
        enqueueCall(call: call, completion: completion)
    }
    
    func listOrdersPlacedInBrand(apiKey: String, brandCode: String, fromDate: String, toDate: String, completion: @escaping ApiResponseCallback<OrderResponse>) {
        let call = giftApiService.listOrdersPlacedInBrand(apiKey: apiKey, brandCode: brandCode, fromDate: fromDate, toDate: toDate)
        enqueueCall(call: call, completion: completion)
    }
    
    func listOrdersByPage(apiKey: String, page: Int, fromDate: String, toDate: String, completion: @escaping ApiResponseCallback<OrderResponse>) {
        let call = giftApiService.listOrdersByPage(apiKey: apiKey, page: page, fromDate: fromDate, toDate: toDate)
        enqueueCall(call: call, completion: completion)
    }
    
    func getAllBrands(apiKey: String, completion: @escaping ApiResponseCallback<BrandResponse>) {
        let call = giftApiService.getAllBrands(apiKey: apiKey)
        enqueueCall(call: call, completion: completion)
    }
    
    func getBrandsByCountry(apiKey: String, country: String, completion: @escaping ApiResponseCallback<BrandResponse>) {
        let call = giftApiService.getBrandsByCountry(apiKey: apiKey, country: country)
        enqueueCall(call: call, completion: completion)
    }
    
    func getBrandByCode(apiKey: String, brandCode: String, completion: @escaping ApiResponseCallback<BrandResponse>) {
        let call = giftApiService.getBrandByCode(apiKey: apiKey, brandCode: brandCode)
        enqueueCall(call: call, completion: completion)
    }
    
    func getBrandByName(apiKey: String, name: String, completion: @escaping ApiResponseCallback<BrandResponse>) {
        let call = giftApiService.getBrandByName(apiKey: apiKey, name: name)
        enqueueCall(call: call, completion: completion)
    }
    
    func getActiveBrands(apiKey: String, isActive: Bool, completion: @escaping ApiResponseCallback<BrandResponse>) {
        let call = giftApiService.getActiveBrands(apiKey: apiKey, isActive: isActive)
        enqueueCall(call: call, completion: completion)
    }
    
    func getBrandsByCategoryId(apiKey: String, categoryId: Int, completion: @escaping ApiResponseCallback<BrandResponse>) {
        let call = giftApiService.getBrandsByCategoryId(apiKey: apiKey, categoryId: categoryId)
        enqueueCall(call: call, completion: completion)
    }
    
    func getBrandLocations(apiKey: String, brandCode: String, completion: @escaping ApiResponseCallback<BrandLocationResponse>) {
        let call = giftApiService.getBrandLocations(apiKey: apiKey, brandCode: brandCode)
        enqueueCall(call: call, completion: completion)
    }
    
    func getLocationByCityId(apiKey: String, brandCode: String, cityId: String, completion: @escaping ApiResponseCallback<BrandLocationCityResponse>) {
        let call = giftApiService.getLocationByCityId(apiKey: apiKey, brandCode: brandCode, cityId: cityId)
        enqueueCall(call: call, completion: completion)
    }
    
    func getCategories(apiKey: String, completion: @escaping ApiResponseCallback<CategoryResponse>) {
        let call = giftApiService.getCategories(apiKey: apiKey)
        enqueueCall(call: call, completion: completion)
    }
    
    func getCountries(apiKey: String, completion: @escaping ApiResponseCallback<CountryResponse>) {
        let call = giftApiService.getCountries(apiKey: apiKey)
        enqueueCall(call: call, completion: completion)
    }
    
    func getCurrencyExchangeRates(apiKey: String, completion: @escaping ApiResponseCallback<ExchangeRateResponse>) {
        let call = giftApiService.getCurrencyRates(apiKey: apiKey)
        enqueueCall(call: call, completion: completion)
    }
    
    func getCredentials(apiKey: String, completion: @escaping ApiResponseCallback<CredentialsResponse>) {
        let call = giftApiService.getCredentials(apiKey: apiKey)
        enqueueCall(call: call, completion: completion)
    }
    
    func generateCredentials(apiKey: String, completion: @escaping ApiResponseCallback<CredentialsGenerationResponse>) {
        let call = giftApiService.generateCredentials(apiKey: apiKey)
        enqueueCall(call: call, completion: completion)
    }
    
    func getBrandWebhooks(apiKey: String, completion: @escaping ApiResponseCallback<WebhooksResponse>) {
        let call = giftApiService.getBrandWebhooks(apiKey: apiKey)
        enqueueCall(call: call, completion: completion)
    }
    
    func activateWebhook(apiKey: String, webhookId: String, completion: @escaping ApiResponseCallback<WebhooksActivationResponse>) {
        let call = giftApiService.activateWebhook(apiKey: apiKey, webhookId: webhookId)
        enqueueCall(call: call, completion: completion)
    }
    
    func deactivateWebhook(apiKey: String, webhookId: String, completion: @escaping ApiResponseCallback<WebhooksDeactivationResponse>) {
        let call = giftApiService.deactivateWebhook(apiKey: apiKey, webhookId: webhookId)
        enqueueCall(call: call, completion: completion)
    }
    
    func createOrder(apiKey: String, request: OrderCreateRequest, completion: @escaping ApiResponseCallback<OrderCreateResponse>) {
        let call = giftApiService.createOrder(apiKey: apiKey, request: request)
        enqueueCall(call: call, completion: completion)
    }
    
    func topupAccount(apiKey: String, request: TopupRequest, completion: @escaping ApiResponseCallback<TopupResponse>) {
        let call = giftApiService.topupAccount(apiKey: apiKey, request: request)
        enqueueCall(call: call, completion: completion)
    }
    
    func activateCredentials(apiKey: String, request: CredentialActivationRequest, completion: @escaping ApiResponseCallback<CredentialActivationResponse>) {
        let call = giftApiService.activateCredentials(apiKey: apiKey, request: request)
        enqueueCall(call: call, completion: completion)
    }
    
    func createWebhook(apiKey: String, request: WebhookCreateRequest, completion: @escaping ApiResponseCallback<WebhookCreateResponse>) {
        let call = giftApiService.createWebhook(apiKey: apiKey, request: request)
        enqueueCall(call: call, completion: completion)
    }
    
    func simulateWebhook(apiKey: String, webhookId: String, completion: @escaping ApiResponseCallback<SimulateWebhookResponse>) {
        let call = giftApiService.simulateWebhook(apiKey: apiKey, webhookId: webhookId)
        enqueueCall(call: call, completion: completion)
    }
    
    private func enqueueCall<T>(call: Call<T>, completion: @escaping ApiResponseCallback<T>) {
        call.enqueue { response in
            switch response.result {
            case .success(let value):
                completion(value, nil)
            case .failure(let error):
                completion(nil, "Error: \(error.localizedDescription)")
            }
        }
    }
}

