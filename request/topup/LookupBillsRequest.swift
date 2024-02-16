import Foundation

// Define a struct to represent the LookupBillsRequest class in Java
struct LookupBillsRequest: Codable {
// Define properties corresponding to the fields in the Java class
let skuCode: String
let accountNumber: String
let settings: [Setting]
}

// Define a struct to represent the Setting class inside LookupBillsRequest in Java
struct Setting: Codable {
// Define properties corresponding to the fields in the Java class
let key: String
let value: String
}