import Foundation

struct ErrorCodeDescription: Codable {
    let resultCode: Int
    let errorCodes: [Any]
    let items: [ErrorCodeDescriptionItem]

    private enum CodingKeys: String, CodingKey {
        case resultCode, errorCodes, items
    }
}

