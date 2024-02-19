//
//  Retro Fit Client.swift
//  intergrated-billers
//

//

import Foundation
import Alamofire

class RetrofitClient {
    private static let BASE_URL = "https://api.kiosksrv.online"
    private static var retrofit: Retrofit?

    static func getRetrofit() -> Retrofit {
        if retrofit == nil {
            retrofit = Retrofit(baseURL: URL(string: BASE_URL))
        }
        return retrofit!
    }
}

