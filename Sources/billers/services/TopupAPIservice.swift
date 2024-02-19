//
//  TopupAPIservice.swift
//  intergrated-billers
//

//

import Foundation

protocol TopupAPIService {
    @GET("/provider/ding/GetCurrencies")
    func getCurrencies(apiKey: String, completion: @escaping (AFDataResponse<Currency>) -> Void)

    @GET("/provider/ding/GetCountries")
    func getCountries(apiKey: String, completion: @escaping (AFDataResponse<Country>) -> Void)

    @GET("/provider/ding/GetRegions")
    func getRegions(countryIsos: [String], apiKey: String, completion: @escaping (AFDataResponse<Region>) -> Void)

    @GET("/provider/ding/GetProviders")
    func getProviders(providerCodes: [String], countryIsos: [String], regionCodes: [String], accountNumber: String, apiKey: String, completion: @escaping (AFDataResponse<Provider>) -> Void)

    @GET("/provider/ding/GetProviderStatus")
    func getProviderStatus(providerCodes: [String], apiKey: String, completion: @escaping (AFDataResponse<ProviderStatus>) -> Void)

    @GET("/provider/ding/GetAccountLookup")
    func getAccountLookup(accountNumber: String, apiKey: String, completion: @escaping (AFDataResponse<AccountLookup>) -> Void)

    @GET("/provider/ding/GetErrorCodeDescriptions")
    func getErrorCodeDescriptions(apiKey: String, completion: @escaping (AFDataResponse<ErrorCodeDescription>) -> Void)

    @GET("/provider/ding/GetPromotionDescriptions")
    func getPromotionDescriptions(languageCodes: [String], apiKey: String, completion: @escaping (AFDataResponse<PromotionDescription>) -> Void)

    @GET("/provider/ding/GetPromotions")
    func getPromotions(countryIsos: [String], providerCodes: [String], accountNumber: String, apiKey: String, completion: @escaping (AFDataResponse<Promotion>) -> Void)

    @GET("/provider/ding/GetBalance")
    func getBalance(apiKey: String, completion: @escaping (AFDataResponse<Balance>) -> Void)

    @GET("/provider/ding/GetProductDescriptions")
    func getProductDescriptions(languageCodes: [String], skuCodes: [String], apiKey: String, completion: @escaping (AFDataResponse<ProductDescription>) -> Void)

    @GET("/provider/ding/GetProducts")
    func getProducts(countryIsos: [String], providerCodes: [String], skuCodes: [String], benefits: [String], regionCodes: [String], accountNumber: String, apiKey: String, completion: @escaping (AFDataResponse<Product>) -> Void)

    @POST("/provider/ding/SendTransfer")
    func sendTransfer(apiKey: String, contentType: String, requestBody: SendTransferRequest, completion: @escaping (AFDataResponse<TransferRecordResponse>) -> Void)

    @POST("/provider/ding/EstimatePrices")
    func estimatePrices(apiKey: String, contentType: String, requestBody: [EstimatePriceRequest], completion: @escaping (AFDataResponse<EstimatePrice>) -> Void)

    @POST("/provider/ding/ListTransferRecords")
    func listTransferRecords(apiKey: String, contentType: String, requestBody: ListTransferRecordRequest, completion: @escaping (AFDataResponse<ListTransferRecord>) -> Void)

    @POST("/provider/ding/CancelTransfers")
    func cancelTransfers(apiKey: String, contentType: String, requestBody: CancelTransfersRequest, completion: @escaping (AFDataResponse<CancelTransfer>) -> Void)

    @POST("/provider/ding/LookupBills")
    func lookupBills(apiKey: String, contentType: String, requestBody: LookupBillsRequest, completion: @escaping (AFDataResponse<LookupBill>) -> Void)
}

