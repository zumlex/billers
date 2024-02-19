//
//  Retro Fit Client.swift
//  intergrated-billers
//

//

import Foundation

class RetrofitClient {
    private static let baseURL = "https://your.api.url.here"
    private static var retrofit: URLSession?

    static func getRetrofit() -> URLSession {
        if retrofit == nil {
            retrofit = URLSession(configuration: .default)
        }
        return retrofit!
    }
}

