//
//  Topup Connect API Handler.swift
//  intergrated-billers
//

//

import Foundation

class TopupConnectApiHandler {
    let topupAPIService: TopupAPIService
    
    init() {
        topupAPIService = RetrofitClient.getRetrofit().create(topupAPIService.self)
    }
    
    func getCurrencies(apiKey: String, completion: @escaping ApiResponseCallback<Currency>) {
        let call = topupAPIService.getCurrencies(apiKey: apiKey)
        enqueueCall(call: call, completion: completion)
    }
    
    func getCountries(apiKey: String, completion: @escaping ApiResponseCallback<Country>) {
        let call = topupAPIService.getCountries(apiKey: apiKey)
        enqueueCall(call: call, completion: completion)
    }
    
    func getRegions(apiKey: String, countryIsos: [String], completion: @escaping ApiResponseCallback<Region>) {
        let call = topupAPIService.getRegions(countryIsos: countryIsos, apiKey: apiKey)
        enqueueCall(call: call, completion: completion)
    }
    
    func getProviders(providerCodes: [String], countryIsos: [String], regionCodes: [String], accountNumber: String, apiKey: String, completion: @escaping ApiResponseCallback<Provider>) {
        let call = topupAPIService.getProviders(providerCodes: providerCodes, countryIsos: countryIsos, regionCodes: regionCodes, accountNumber: accountNumber, apiKey: apiKey)
        enqueueCall(call: call, completion: completion)
    }
    
    func getProviderStatus(providerCodes: [String], apiKey: String, completion: @escaping ApiResponseCallback<ProviderStatus>) {
        let call = topupAPIService.getProviderStatus(providerCodes: providerCodes, apiKey: apiKey)
        enqueueCall(call: call, completion: completion)
    }
    
    func getAccountLookup(accountNumber: String, apiKey: String, completion: @escaping ApiResponseCallback<AccountLookup>) {
        let call = topupAPIService.getAccountLookup(accountNumber: accountNumber, apiKey: apiKey)
        enqueueCall(call: call, completion: completion)
    }
    
    func getErrorCodeDescriptions(apiKey: String, completion: @escaping ApiResponseCallback<ErrorCodeDescription>) {
        let call = topupAPIService.getErrorCodeDescriptions(apiKey: apiKey)
        enqueueCall(call: call, completion: completion)
    }
    
    func getPromotionDescriptions(languageCodes: [String], apiKey: String, completion: @escaping ApiResponseCallback<PromotionDescription>) {
        let call = topupAPIService.getPromotionDescriptions(languageCodes: languageCodes, apiKey: apiKey)
        enqueueCall(call: call, completion: completion)
    }
    
    func getPromotions(countryIsos: [String], providerCodes: [String], accountNumber: String, apiKey: String, completion: @escaping ApiResponseCallback<Promotion>) {
        let call = topupAPIService.getPromotions(countryIsos: countryIsos, providerCodes: providerCodes, accountNumber: accountNumber, apiKey: apiKey)
        enqueueCall(call: call, completion: completion)
    }
    
    func getBalance(apiKey: String, completion: @escaping ApiResponseCallback<Balance>) {
        let call = topupAPIService.getBalance(apiKey: apiKey)
        enqueueCall(call: call, completion: completion)
    }
    
    func getProductDescriptions(languageCodes: [String], skuCodes: [String], apiKey: String, completion: @escaping ApiResponseCallback<ProductDescription>) {
        let call = topupAPIService.getProductDescriptions(languageCodes: languageCodes, skuCodes: skuCodes, apiKey: apiKey)
        enqueueCall(call: call, completion: completion)
    }
    
    func getProducts(countryIsos: [String], providerCodes: [String], skuCodes: [String], benefits: [String], regionCodes: [String], accountNumber: String, apiKey: String, completion: @escaping ApiResponseCallback<Product>) {
        let call = topupAPIService.getProducts(countryIsos: countryIsos, providerCodes: providerCodes, skuCodes: skuCodes, benefits: benefits, regionCodes: regionCodes, accountNumber: accountNumber, apiKey: apiKey)
        enqueueCall(call: call, completion: completion)
    }
    
    func sendTransfer(apiKey: String, request: SendTransferRequest, completion: @escaping ApiResponseCallback<TransferRecordResponse>) {
        let call = topupAPIService.sendTransfer(apiKey: apiKey, contentType: "application/json", requestBody: request)
        enqueueCall(call: call, completion: completion)
    }
    
    func estimatePrices(apiKey: String, request: [EstimatePriceRequest], completion: @escaping ApiResponseCallback<EstimatePrice>) {
        let call = topupAPIService.estimatePrices(apiKey: apiKey, contentType: "application/json", requestBody: request)
        enqueueCall(call: call, completion: completion)
    }
    
    func listTransferRecords(apiKey: String, request: ListTransferRecordRequest, completion: @escaping ApiResponseCallback<ListTransferRecord>) {
        let call = topupAPIService.listTransferRecords(apiKey: apiKey, contentType: "application/json", requestBody: request)
        enqueueCall(call: call, completion: completion)
    }
    
    func cancelTransfers(apiKey: String, request: CancelTransfersRequest, completion: @escaping ApiResponseCallback<CancelTransfer>) {
        let call = topupAPIService.cancelTransfers(apiKey: apiKey, contentType: "application/json", requestBody: request)
        enqueueCall(call: call, completion: completion)
    }
    
    func lookupBills(apiKey: String, request: LookupBillsRequest, completion: @escaping ApiResponseCallback<LookupBill>) {
        let call = topupAPIService.lookupBills(apiKey: apiKey, contentType: "application/json", requestBody: request)
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

