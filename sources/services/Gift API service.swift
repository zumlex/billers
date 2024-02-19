//
//  Gift API service.swift
//  intergrated-billers
//

//

import Foundation
import Alamofire

protocol GiftApiService {
    @GET("/provider/you-got-a-gift/currencies/")
    func getCurrencies(apiKey: String, completion: @escaping (AFDataResponse<CurrencyResponse>) -> Void)

    @GET("/provider/you-got-a-gift/account/")
    func getAccount(apiKey: String, completion: @escaping (AFDataResponse<AccountResponse>) -> Void)

    @GET("/provider/you-got-a-gift/orders/")
    func searchOrderByGiftCode(apiKey: String, code: String, completion: @escaping (AFDataResponse<OrderResponse>) -> Void)

    @GET("/provider/you-got-a-gift/orders/")
    func searchOrderByOrderId(apiKey: String, orderId: String, completion: @escaping (AFDataResponse<OrderResponse>) -> Void)

    @GET("/provider/you-got-a-gift/orders/")
    func listAllDigitalOrders(apiKey: String, notify: Bool, fromDate: String, toDate: String, completion: @escaping (AFDataResponse<OrderResponse>) -> Void)

    @GET("/provider/you-got-a-gift/orders/")
    func listOrdersPlacedInCountry(apiKey: String, country: String, fromDate: String, toDate: String, completion: @escaping (AFDataResponse<OrderResponse>) -> Void)

    @GET("/provider/you-got-a-gift/orders/")
    func listOrdersPlacedInBrand(apiKey: String, brandCode: String, fromDate: String, toDate: String, completion: @escaping (AFDataResponse<OrderResponse>) -> Void)

    @GET("/provider/you-got-a-gift/orders/")
    func listOrdersByPage(apiKey: String, page: Int, fromDate: String, toDate: String, completion: @escaping (AFDataResponse<OrderResponse>) -> Void)

    @GET("/provider/you-got-a-gift/brands/")
    func getAllBrands(apiKey: String, completion: @escaping (AFDataResponse<BrandResponse>) -> Void)

    @GET("/provider/you-got-a-gift/brands/")
    func getBrandsByCountry(apiKey: String, country: String, completion: @escaping (AFDataResponse<BrandResponse>) -> Void)

    @GET("/provider/you-got-a-gift/brands/")
    func getBrandByCode(apiKey: String, brandCode: String, completion: @escaping (AFDataResponse<BrandResponse>) -> Void)

    @GET("/provider/you-got-a-gift/brands/")
    func getBrandByName(apiKey: String, name: String, completion: @escaping (AFDataResponse<BrandResponse>) -> Void)

    @GET("/provider/you-got-a-gift/brands/")
    func getActiveBrands(apiKey: String, isActive: Bool, completion: @escaping (AFDataResponse<BrandResponse>) -> Void)

    @GET("/provider/you-got-a-gift/brands/")
    func getBrandsByCategoryId(apiKey: String, categoryId: Int, completion: @escaping (AFDataResponse<BrandResponse>) -> Void)

    @GET("/provider/you-got-a-gift/brands/{brand_code}/locations/")
    func getBrandLocations(apiKey: String, brandCode: String, completion: @escaping (AFDataResponse<BrandLocationResponse>) -> Void)

    @GET("/provider/you-got-a-gift/brands/{brand_code}/locations/{city_id}")
    func getLocationByCityId(apiKey: String, brandCode: String, cityId: String, completion: @escaping (AFDataResponse<BrandLocationCityResponse>) -> Void)

    @GET("/provider/you-got-a-gift/categories/")
    func getCategories(apiKey: String, completion: @escaping (AFDataResponse<CategoryResponse>) -> Void)

    @GET("/provider/you-got-a-gift/countries/")
    func getCountries(apiKey: String, completion: @escaping (AFDataResponse<CountryResponse>) -> Void)

    @GET("/provider/you-got-a-gift/currencies/rates/")
    func getCurrencyRates(apiKey: String, completion: @escaping (AFDataResponse<ExchangeRateResponse>) -> Void)

    @GET("/provider/you-got-a-gift/credentials/")
    func getCredentials(apiKey: String, completion: @escaping (AFDataResponse<CredentialsResponse>) -> Void)

    @GET("/provider/you-got-a-gift/credentials/generate/")
    func generateCredentials(apiKey: String, completion: @escaping (AFDataResponse<CredentialsGenerationResponse>) -> Void)

    @GET("/provider/you-got-a-gift/webhooks/brands")
    func getBrandWebhooks(apiKey: String, completion: @escaping (AFDataResponse<WebhooksResponse>) -> Void)

    @GET("/provider/you-got-a-gift/webhooks/brands/{id}/activate/")
    func activateWebhook(apiKey: String, webhookId: String, completion: @escaping (AFDataResponse<WebhooksActivationResponse>) -> Void)

    @GET("/provider/you-got-a-gift/webhooks/brands/{id}/deactivate/")
    func deactivateWebhook(apiKey: String, webhookId: String, completion: @escaping (AFDataResponse<WebhooksDeactivationResponse>) -> Void)

    @POST("/provider/you-got-a-gift/orders/")
    func createOrder(apiKey: String, request: OrderCreateRequest, completion: @escaping (AFDataResponse<OrderCreateResponse>) -> Void)

    @POST("/provider/you-got-a-gift/account/topup/")
    func topupAccount(apiKey: String, request: TopupRequest, completion: @escaping (AFDataResponse<TopupResponse>) -> Void)

    @POST("/provider/you-got-a-gift/credentials/activate/")
    func activateCredentials(apiKey: String, request: CredentialActivationRequest, completion: @escaping (AFDataResponse<CredentialActivationResponse>) -> Void)

    @POST("/provider/you-got-a-gift/webhooks/brands/")
    func createWebhook(apiKey: String, request: WebhookCreateRequest, completion: @escaping (AFDataResponse<WebhookCreateResponse>) -> Void)

    @POST("/provider/you-got-a-gift/webhooks/brands/{id}/simulate/")
    func simulateWebhook(apiKey: String, webhookId: String, completion: @escaping (AFDataResponse<SimulateWebhookResponse>) -> Void)
}

