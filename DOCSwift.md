# API Handlers

This repository contains handlers for interacting with different APIs.

# Add it in your root build.gradle at the end of repositories:
```swift
dependencyResolutionManagement {
    repositoriesMode.set(RepositoriesMode.FAIL_ON_PROJECT_REPOS)
    repositories {
        mavenCentral()
        maven { url 'https://jitpack.io' }
    }
}

Step 2: Add the Dependency
In your Swift project, you can add the dependency using Swift Package Manager or Cocoapods.

Swift Package Manager
Open your Xcode project.
Go to "File" > "Swift Packages" > "Add Package Dependency..."
Enter the repository URL: https://github.com/versatileITbd/integrated-billers-sdk
Select the version you want to use (e.g., 1.0.0).
Click "Next" and then "Finish" to add the package to your project.
Cocoapods
Open your Terminal.
Navigate to your project directory.
Run pod init to create a Podfile if you don't have one.
Open the Podfile with a text editor.
Add the following line to your Podfile:
ruby
Copy code
pod 'integrated-billers-sdk', '~> 1.0.0'
Save the Podfile and run pod install in the Terminal.
Topup Connect API Handler
This handler manages API requests for the Topup Connect API.

1. Get Currencies
This function sends a request to retrieve currency information.
#### Parameters

- `apiKey`: The API key required to authenticate the request.
- `completion`: The completion handler to handle the API response. Implement this completion handler to define behavior on successful or failed API requests. This completion handler must accept an optional result of type `Currency` and an optional error message of type `String`.

#### Example Usage

```swift
// Example: Retrieving currency information
let topupConnectApiHandler = TopupConnectApiHandler()

topupConnectApiHandler.getCurrencies(apiKey: API_KEY) { result, errorMessage in
    if let result = result {
        // Handle successful response here
        // Example: Process the retrieved currency information
    } else if let errorMessage = errorMessage {
        // Handle error response here
        // Example: Log the error message or display it to the user
    }
}
```
## 2. getRegions

Sends a request to retrieve region information for a given list of country ISO codes.

#### Parameters

- `apiKey`: The API key required to authenticate the request.
- `countryIsos`: A list of country ISO codes for which region information will be retrieved. Filter the list to regions in countries with the submitted countryIso.
- `completion`: The completion handler to handle the API response. Implement this completion handler to define behavior on successful or failed API requests. This completion handler must accept an optional result of type `Region` and an optional error message of type `String`.

#### Example Usage

```swift
// Example: Retrieving region information for a list of country ISO codes
let topupConnectApiHandler = TopupConnectApiHandler()
let countryIsos = ["AD"] // Example country ISO code

topupConnectApiHandler.getRegions(apiKey: API_KEY, countryIsos: countryIsos) { result, errorMessage in
    if let result = result {
        // Handle successful response here
        // Example: Process the retrieved region information
    } else if let errorMessage = errorMessage {
        // Handle error response here
        // Example: Log the error message or display it to the user
    }
}
```
## 3. getCountries

Sends a request to retrieve country information.

#### Parameters

- `apiKey`: The API key required to authenticate the request.
- `completion`: The completion handler to handle the API response. Implement this completion handler to define behavior on successful or failed API requests. This completion handler must accept an optional result of type `Country` and an optional error message of type `String`.

#### Example Usage

```swift
// Example: Retrieving country information
let topupConnectApiHandler = TopupConnectApiHandler()

topupConnectApiHandler.getCountries(apiKey: API_KEY) { result, errorMessage in
    if let result = result {
        // Handle successful response here
        // Example: Process the retrieved country information
    } else if let errorMessage = errorMessage {
        // Handle error response here
        // Example: Log the error message or display it to the user
    }
}
```
## 4. getProviders

Sends a request to retrieve provider information based on the specified parameters.

#### Parameters

- `providerCodes`: An array of provider codes. Filter the list to providers with the submitted provider codes.
- `countryIsos`: An array of country ISO codes. Filter the list to providers in countries with the submitted country ISOs.
- `regionCodes`: An array of region codes. Filter the list to providers in regions with the submitted region codes.
- `accountNumber`: The account number associated with the request. Filter the list to providers that are valid for the submitted account number. For phone number-based products, the account number should be in international phone number format.
- `apiKey`: The API key required to authenticate the request.
- `completion`: The completion handler to handle the API response. Implement this completion handler to define behavior on successful or failed API requests. This completion handler must accept an optional result of type `Provider` and an optional error message of type `String`.

#### Example Usage

```swift
// Example: Retrieving provider information
let topupConnectApiHandler = TopupConnectApiHandler()
let providerCodes = ["providerCode1", "providerCode2"] // Example provider codes
let countryIsos = ["US", "CA"] // Example country ISO codes
let regionCodes = ["regionCode1", "regionCode2"] // Example region codes
let accountNumber = "123456789" // Example account number

topupConnectApiHandler.getProviders(providerCodes: providerCodes, countryIsos: countryIsos, regionCodes: regionCodes, accountNumber: accountNumber, apiKey: API_KEY) { result, errorMessage in
    if let result = result {
        // Handle successful response here
        // Example: Process the retrieved provider information
    } else if let errorMessage = errorMessage {
        // Handle error response here
        // Example: Log the error message or display it to the user
    }
}
```

## 5. getProviderStatus

Sends a request to retrieve the status of providers based on the specified provider codes.

#### Parameters

- `providerCodes`: An array of provider codes.
- `apiKey`: The API key required to authenticate the request.
- `completion`: The completion handler to handle the API response. Implement this completion handler to define behavior on successful or failed API requests. This completion handler must accept an optional result of type `ProviderStatus` and an optional error message of type `String`.

#### Example Usage

```swift
// Example: Retrieving provider status
let topupConnectApiHandler = TopupConnectApiHandler()
let providerCodes = ["providerCode1", "providerCode2"] // Example provider codes

topupConnectApiHandler.getProviderStatus(providerCodes: providerCodes, apiKey: API_KEY) { result, errorMessage in
    if let result = result {
        // Handle successful response here
        // Example: Process the retrieved provider status information
    } else if let errorMessage = errorMessage {
        // Handle error response here
        // Example: Log the error message or display it to the user
    }
}
```

## 6. getProducts

Sends a request to retrieve product information based on the specified parameters.

#### Parameters

- `countryIsos`: An array of country ISO codes. Filter the list to products for countries with the given ISOs.
- `providerCodes`: An array of provider codes. Filter the list to products supplied by providers with the submitted provider codes.
- `skuCodes`: An array of SKU (Stock Keeping Unit) codes. Filter the list to products with the submitted SkuCodes.
- `benefits`: An array of benefits. Filter the list to products with the listed benefits.
- `regionCodes`: An array of region codes. Filter the list to products in regions with the submitted regionCodes.
- `accountNumber`: The account number associated with the request. Filter the list to products that are valid for the submitted account number. For phone number-based products, the account number should be in international phone number format.
- `apiKey`: The API key required to authenticate the request.
- `completion`: The completion handler to handle the API response. Implement this completion handler to define behavior on successful or failed API requests. This completion handler must accept an optional result of type `Product` and an optional error message of type `String`.

#### Example Usage

```swift
// Example: Retrieving product information
let topupConnectApiHandler = TopupConnectApiHandler()
let countryIsos = ["US", "CA"] // Example country ISO codes
let providerCodes = ["providerCode1", "providerCode2"] // Example provider codes
let skuCodes = ["skuCode1", "skuCode2"] // Example SKU codes
let benefits = ["benefit1", "benefit2"] // Example benefits
let regionCodes = ["regionCode1", "regionCode2"] // Example region codes
let accountNumber = "123456789" // Example account number

topupConnectApiHandler.getProducts(countryIsos: countryIsos, providerCodes: providerCodes, skuCodes: skuCodes, benefits: benefits, regionCodes: regionCodes, accountNumber: accountNumber, apiKey: API_KEY) { result, errorMessage in
    if let result = result {
        // Handle successful response here
        // Example: Process the retrieved product information
    } else if let errorMessage = errorMessage {
        // Handle error response here
        // Example: Log the error message or display it to the user
    }
}
```

## 7. getProductDescriptions

Sends a request to retrieve product descriptions based on the specified parameters.

#### Parameters

- `languageCodes`: An array of language codes. Filter the list to product descriptions with the submitted language codes.
- `skuCodes`: An array of SKU (Stock Keeping Unit) codes. Filter the list to descriptions for products with the submitted SkuCodes.
- `apiKey`: The API key required to authenticate the request.
- `completion`: The completion handler to handle the API response. Implement this completion handler to define behavior on successful or failed API requests. This completion handler must accept an optional result of type `ProductDescription` and an optional error message of type `String`.

#### Example Usage

```swift
// Example: Retrieving product descriptions
let topupConnectApiHandler = TopupConnectApiHandler()
let languageCodes = ["en", "es"] // Example language codes
let skuCodes = ["skuCode1", "skuCode2"] // Example SKU codes

topupConnectApiHandler.getProductDescriptions(languageCodes: languageCodes, skuCodes: skuCodes, apiKey: API_KEY) { result, errorMessage in
    if let result = result {
        // Handle successful response here
        // Example: Process the retrieved product descriptions
    } else if let errorMessage = errorMessage {
        // Handle error response here
        // Example: Log the error message or display it to the user
    }
}
```

## 8. getAccountLookup

Sends a request to retrieve account lookup information based on the specified parameters.

#### Parameters

- `accountNumber`: The account number associated with the request. For phone number based products, the account number should be in international phone number format.
- `apiKey`: The API key required to authenticate the request.
- `completion`: The completion handler to handle the API response. Implement this completion handler to define behavior on successful or failed API requests. This completion handler must accept an optional result of type `AccountLookup` and an optional error message of type `String`.

#### Example Usage

```swift
// Example: Retrieving account lookup information
let topupConnectApiHandler = TopupConnectApiHandler()
let accountNumber = "123456789" // Example account number

topupConnectApiHandler.getAccountLookup(accountNumber: accountNumber, apiKey: API_KEY) { result, errorMessage in
    if let result = result {
        // Handle successful response here
        // Example: Process the retrieved account lookup information
    } else if let errorMessage = errorMessage {
        // Handle error response here
        // Example: Log the error message or display it to the user
    }
}
```

## 9. getErrorCodeDescriptions

Sends a request to retrieve descriptions for error codes.

#### Parameters

- `apiKey`: The API key required to authenticate the request.
- `completion`: The completion handler to handle the API response. Implement this completion handler to define behavior on successful or failed API requests. This completion handler must accept an optional result of type `ErrorCodeDescription` and an optional error message of type `String`.

#### Example Usage

```swift
// Example: Retrieving descriptions for error codes
let topupConnectApiHandler = TopupConnectApiHandler()

topupConnectApiHandler.getErrorCodeDescriptions(apiKey: API_KEY) { result, errorMessage in
    if let result = result {
        // Handle successful response here
        // Example: Process the retrieved error code descriptions
    } else if let errorMessage = errorMessage {
        // Handle error response here
        // Example: Log the error message or display it to the user
    }
}
```

## 10. getBalance

Sends a request to retrieve account balance information.

### Parameters

- `API_KEY`: The API key required to authenticate the request.
- `completion`: The completion handler to handle the API response. Implement this completion handler to define behavior on successful or failed API requests. This completion handler must accept an optional result of type `Balance` and an optional error message of type `String`.

### Example Usage

```swift
// Initialize the TopupConnectApiHandler
let topupConnectApiHandler = TopupConnectApiHandler()

// Retrieve account balance information
topupConnectApiHandler.getBalance(apiKey: API_KEY) { result, errorMessage in
    if let result = result {
        // Handle successful response here
    } else if let errorMessage = errorMessage {
        // Handle error response here
    }
}
```

## 11. getPromotions

Sends a request to retrieve promotions based on the specified parameters.

### Parameters

- `countryIsos`: A list of country ISO codes. Filter the list to promotions for countries with the given ISOs.
- `providerCodes`: A list of provider codes. Filter the list to promotions on products supplied by providers with the submitted provider codes.
- `accountNumber`: The account number associated with the request. Filter the list to promotions on products that are valid for the submitted account number. For phone number based products, the account number should be in international phone number format.
- `API_KEY`: The API key required to authenticate the request.
- `completion`: The completion handler to handle the API response. Implement this completion handler to define behavior on successful or failed API requests. This completion handler must accept an optional result of type `Promotion` and an optional error message of type `String`.

### Example Usage

```swift
// Initialize the TopupConnectApiHandler
let topupConnectApiHandler = TopupConnectApiHandler()

// Retrieve promotions
topupConnectApiHandler.getPromotions(countryIsos: countryIsos, providerCodes: providerCodes, accountNumber: accountNumber, apiKey: API_KEY) { result, errorMessage in
    if let result = result {
        // Handle successful response here
    } else if let errorMessage = errorMessage {
        // Handle error response here
    }
}
```

## 12. getPromotionDescriptions

Sends a request to retrieve promotion descriptions based on the specified parameters.

### Parameters

- `languageCodes`: A list of language codes. Filter the list to promotion descriptions with the submitted language codes.
- `API_KEY`: The API key required to authenticate the request.
- `completion`: The completion handler to handle the API response. Implement this completion handler to define behavior on successful or failed API requests. This completion handler must accept an optional result of type `PromotionDescription` and an optional error message of type `String`.

### Example Usage

```swift
// Initialize the TopupConnectApiHandler
let topupConnectApiHandler = TopupConnectApiHandler()

// Retrieve promotion descriptions
topupConnectApiHandler.getPromotionDescriptions(languageCodes: languageCodes, apiKey: API_KEY) { result, errorMessage in
    if let result = result {
        // Handle successful response here
    } else if let errorMessage = errorMessage {
        // Handle error response here
    }
}
```

## 13. sendTransfer

Sends a request to transfer funds with the specified parameters.

### Parameters

- `apiKey`: The API key required to authenticate the request.
- `request`: An instance of the `SendTransferRequest` struct containing parameters for the transfer.
- `completion`: The completion handler to handle the API response. Implement this completion handler to define behavior on successful or failed API requests. This completion handler must accept an optional result of type `TransferRecordResponse` and an optional error message of type `String`.

### Example Usage

```swift
// Initialize the TopupConnectApiHandler
let topupConnectApiHandler = TopupConnectApiHandler()

// Create a SendTransferRequest struct with required parameters
let sendTransferRequest = SendTransferRequest(
    skuCode: "SKU123", // (Required) Code provided by GetProducts API
    sendValue: 100, // (Required) The transfer value to be sent. Specified to two decimal places of accuracy of the major currency unit, e.g. 3.17 USD.
    accountNumber: "123456789", // (Required) The account number to target
    distributorRef: "wef", //(Required) Unique identifier in the distributor system to be associated with the transfer
    validateOnly: true // (Required) Validate the request with the provider without doing a transfer
    // Add other optional parameters as necessary
)

// Send transfer request
topupConnectApiHandler.sendTransfer(apiKey: API_KEY, request: sendTransferRequest) { result, errorMessage in
    if let result = result {
        // Handle successful response here
    } else if let errorMessage = errorMessage {
        // Handle error response here
    }
}
```
## 14. estimatePrices

Sends a request to estimate prices for multiple transfers with the specified parameters.

### Parameters

- `apiKey`: The API key required to authenticate the request.
- `requests`: An array of `EstimatePriceRequest` structs containing parameters for each transfer.
- `completion`: The completion handler to handle the API response. Implement this completion handler to define behavior on successful or failed API requests. This completion handler must accept an optional result of type `EstimatePrice` and an optional error message of type `String`.

### Example Usage

```swift
// Initialize the TopupConnectApiHandler
let topupConnectApiHandler = TopupConnectApiHandler()

// Create an array of EstimatePriceRequest structs with required parameters
let estimatePriceRequests: [EstimatePriceRequest] = [
    EstimatePriceRequest(
        sendValue: 100,
        sendCurrencyIso: "USD",
        receiveValue: 0,
        skuCode: "SKU123",
        batchItemRef: "Batch1"
    ),
    EstimatePriceRequest(
        sendValue: 200,
        sendCurrencyIso: "EUR",
        receiveValue: 0,
        skuCode: "SKU456",
        batchItemRef: "Batch2"
    )
    // Add more EstimatePriceRequest structs as needed
]

// Send estimate prices request
topupConnectApiHandler.estimatePrices(apiKey: API_KEY, requests: estimatePriceRequests) { result, errorMessage in
    if let result = result {
        // Handle successful response here
    } else if let errorMessage = errorMessage {
        // Handle error response here
    }
}
```
## 15. listTransferRecords

Sends a request to list transfer records based on the specified parameters.

### Parameters

- `apiKey`: The API key required to authenticate the request.
- `request`: An instance of the `ListTransferRecordRequest` struct containing parameters for the transfer record listing.
- `completion`: The completion handler to handle the API response. Implement this completion handler to define behavior on successful or failed API requests. This completion handler must accept an optional result of type `ListTransferRecord` and an optional error message of type `String`.

### Example Usage

```swift
// Initialize the TopupConnectApiHandler
let topupConnectApiHandler = TopupConnectApiHandler()

// Create a ListTransferRecordRequest struct with required parameters
let listTransferRecordRequest = ListTransferRecordRequest(
    transferRef: "Transfer123", // Filter by Topup TransferRef
    distributorRef: "Distributor123", // Filter transfers by DistributorRef.
    accountNumber: "123456789", // Filter transfers by AccountNumber
    skip: 0, // The amount of records to by-pass before returning the remaining records
    take: 10 // The amount of records to return
)

// Send list transfer records request
topupConnectApiHandler.listTransferRecords(apiKey: API_KEY, request: listTransferRecordRequest) { result, errorMessage in
    if let result = result {
        // Handle successful response here
    } else if let errorMessage = errorMessage {
        // Handle error response here
    }
}
```
## 16. cancelTransfers

Sends a request to cancel transfers based on the specified parameters.

### Parameters

- `apiKey`: The API key required to authenticate the request.
- `request`: An instance of the `CancelTransfersRequest` struct containing parameters for cancelling transfers.
- `completion`: The completion handler to handle the API response. Implement this completion handler to define behavior on successful or failed API requests. This completion handler must accept an optional result of type `CancelTransfer` and an optional error message of type `String`.

### Example Usage

```swift
// Initialize the TopupConnectApiHandler
let topupConnectApiHandler = TopupConnectApiHandler()

// Create a list of CancelTransferItem structs with required parameters
let cancelTransferItem1 = CancelTransferItem(
    transferId: TransferId(transferRef: "TransferRef1", distributorRef: "DistributorRef1"),
    batchItemRef: "BatchItemRef1"
)

let cancelTransferItem2 = CancelTransferItem(
    transferId: TransferId(transferRef: "TransferRef2", distributorRef: "DistributorRef2"),
    batchItemRef: "BatchItemRef2"
)

let cancelTransferItems = [cancelTransferItem1, cancelTransferItem2]

// Create a CancelTransfersRequest struct
let cancelTransfersRequest = CancelTransfersRequest(cancelTransferItems: cancelTransferItems)

// Send cancel transfers request
topupConnectApiHandler.cancelTransfers(apiKey: API_KEY, request: cancelTransfersRequest) { result, errorMessage in
    if let result = result {
        // Handle successful response here
    } else if let errorMessage = errorMessage {
        // Handle error response here
    }
}
```
## 17. lookupBills

Sends a request to lookup bills based on the specified parameters.

### Parameters

- `apiKey`: The API key required to authenticate the request.
- `request`: An instance of the `LookupBillsRequest` struct containing parameters for bill lookup.
- `completion`: The completion handler to handle the API response. Implement this completion handler to define behavior on successful or failed API requests. This completion handler must accept an optional result of type `LookupBill` and an optional error message of type `String`.

### Example Usage

```swift
// Initialize the TopupConnectApiHandler
let topupConnectApiHandler = TopupConnectApiHandler()

// Create a list of Setting structs
let setting1 = Setting(name: "SettingName1", value: "SettingValue1")
// Add more settings as needed
let settings = [setting1]

// Create a LookupBillsRequest struct with required parameters
let lookupBillsRequest = LookupBillsRequest(skuCode: "SKU123", accountNumber: "123456789", settings: settings)

// Send lookup bills request
topupConnectApiHandler.lookupBills(apiKey: API_KEY, request: lookupBillsRequest) { result, errorMessage in
    if let result = result {
        // Handle successful response here
    } else if let errorMessage = errorMessage {
        // Handle error response here
    }
}
```

## Gift ApiHandler

Handles API requests for the Gift API.

### 1. getCurrencies

This method retrieves currencies from the Gift API.

#### Parameters

- `apiKey`: The API key required to authenticate the request.
- `callback`: An instance of `ApiResponseCallback<CurrencyResponse>` to handle the API response. It defines two methods:
  - `onSuccess`: Called when the API request is successful, receiving a `CurrencyResponse` object.
  - `onError`: Called if there is an error during the API request, receiving an error message.

#### Example Usage

```swift
// Initialize the GiftApiHandler
let giftApiHandler = GiftApiHandler()

// Make an API call to get currencies
giftApiHandler.getCurrencies(apiKey: API_KEY) { result, errorMessage in
    if let result = result {
        // Handle successful response here
    } else if let errorMessage = errorMessage {
        // Handle error response here
    }
}
```
## 2. getAccount

This method retrieves account information from the Gift API.

### Parameters

- `apiKey`: The API key required to authenticate the request.
- `callback`: An instance of `ApiResponseCallback<AccountResponse>` to handle the API response. It defines two methods:
  - `onSuccess`: Called when the API request is successful, receiving an `AccountResponse` object.
  - `onError`: Called if there is an error during the API request, receiving an error message.

### Example Usage

```swift
// Initialize the GiftApiHandler
let giftApiHandler = GiftApiHandler()

// Make an API call to get account information
giftApiHandler.getAccount(apiKey: API_KEY) { result, errorMessage in
    if let result = result {
        // Handle successful response here
    } else if let errorMessage = errorMessage {
        // Handle error response here
    }
}
```
## 3. searchOrderByGiftCode

This method searches for an order by gift code from the Gift API.

### Parameters

- `apiKey`: The API key required to authenticate the request.
- `code`: The gift code used to search for the order.
- `callback`: An instance of `ApiResponseCallback<OrderResponse>` to handle the API response. It defines two methods:
  - `onSuccess`: Called when the API request is successful, receiving an `OrderResponse` object.
  - `onError`: Called if there is an error during the API request, receiving an error message.

### Example Usage

```swift
// Initialize the GiftApiHandler
let giftApiHandler = GiftApiHandler()

// Gift code to search for
let code = "1234"

// Make an API call to search for an order by gift code
giftApiHandler.searchOrderByGiftCode(apiKey: API_KEY, code: code) { result, errorMessage in
    if let result = result {
        // Handle successful response here
    } else if let errorMessage = errorMessage {
        // Handle error response here
    }
}
```
## 4. searchOrderByOrderId

This method searches for an order by order ID from the Gift API.

### Parameters

- `apiKey`: The API key required to authenticate the request.
- `orderId`: The order ID used to search for the order.
- `callback`: An instance of `ApiResponseCallback<OrderResponse>` to handle the API response. It defines two methods:
  - `onSuccess`: Called when the API request is successful, receiving an `OrderResponse` object.
  - `onError`: Called if there is an error during the API request, receiving an error message.

### Example Usage

```swift
// Initialize the GiftApiHandler
let giftApiHandler = GiftApiHandler()

// Order ID to search for
let orderId = "12345"

// Make an API call to search for an order by order ID
giftApiHandler.searchOrderByOrderId(apiKey: API_KEY, orderId: orderId) { result, errorMessage in
    if let result = result {
        // Handle successful response here
    } else if let errorMessage = errorMessage {
        // Handle error response here
    }
}
```

##  5. listAllDigitalOrders

This method retrieves a list of all digital orders from the Gift API.

### Parameters

- `apiKey`: The API key required to authenticate the request.
- `notify`: A boolean value indicating whether to notify about the orders.
- `fromDate`: The start date for filtering orders.
- `toDate`: The end date for filtering orders.
- `callback`: An instance of `ApiResponseCallback<OrderResponse>` to handle the API response. It defines two methods:
  - `onSuccess`: Called when the API request is successful, receiving an `OrderResponse` object.
  - `onError`: Called if there is an error during the API request, receiving an error message.

### Example Usage

```swift
// Initialize the GiftApiHandler
let giftApiHandler = GiftApiHandler()

// Set parameters
let apiKey = "YOUR_API_KEY"
let notify = true
let fromDate = "2024-01-01"
let toDate = "2024-02-01"

// Make an API call to retrieve all digital orders
giftApiHandler.listAllDigitalOrders(apiKey: apiKey, notify: notify, fromDate: fromDate, toDate: toDate) { result, errorMessage in
    if let result = result {
        // Handle successful response here
    } else if let errorMessage = errorMessage {
        // Handle error response here
    }
}
```

## 6. listOrdersPlacedInCountry

This method retrieves a list of orders placed in a specific country from the Gift API.

### Parameters

- `apiKey`: The API key required to authenticate the request.
- `country`: The ISO code of the country for which to retrieve orders.
- `fromDate`: The start date for filtering orders.
- `toDate`: The end date for filtering orders.
- `callback`: An instance of `ApiResponseCallback<OrderResponse>` to handle the API response. It defines two methods:
  - `onSuccess`: Called when the API request is successful, receiving an `OrderResponse` object.
  - `onError`: Called if there is an error during the API request, receiving an error message.

### Example Usage

```swift
// Initialize the GiftApiHandler
let giftApiHandler = GiftApiHandler()

// Set parameters
let apiKey = "YOUR_API_KEY"
let country = "US"
let fromDate = "2024-01-01"
let toDate = "2024-02-01"

// Make an API call to retrieve orders placed in a specific country
giftApiHandler.listOrdersPlacedInCountry(apiKey: apiKey, country: country, fromDate: fromDate, toDate: toDate) { result, errorMessage in
    if let result = result {
        // Handle successful response here
    } else if let errorMessage = errorMessage {
        // Handle error response here
    }
}
```

## 7. listOrdersPlacedInBrand

This method retrieves a list of orders placed for a specific brand from the Gift API.

### Parameters

- `apiKey`: The API key required to authenticate the request.
- `brandCode`: The code of the brand for which to retrieve orders.
- `fromDate`: The start date for filtering orders.
- `toDate`: The end date for filtering orders.
- `callback`: An instance of `ApiResponseCallback<OrderResponse>` to handle the API response. It defines two methods:
  - `onSuccess`: Called when the API request is successful, receiving an `OrderResponse` object.
  - `onError`: Called if there is an error during the API request, receiving an error message.

### Example Usage

```swift
// Initialize the GiftApiHandler
let giftApiHandler = GiftApiHandler()

// Set parameters
let apiKey = "YOUR_API_KEY"
let brandCode = "BRAND_CODE"
let fromDate = "2024-01-01"
let toDate = "2024-02-01"

// Make an API call to retrieve orders placed for a specific brand
giftApiHandler.listOrdersPlacedInBrand(apiKey: apiKey, brandCode: brandCode, fromDate: fromDate, toDate: toDate) { result, errorMessage in
    if let result = result {
        // Handle successful response here
    } else if let errorMessage = errorMessage {
        // Handle error response here
    }
}
```

## 8. listOrdersByPage

This method retrieves a list of orders by page from the Gift API.

### Parameters

- `apiKey`: The API key required to authenticate the request.
- `page`: The page number of the orders to retrieve.
- `fromDate`: The start date for filtering orders.
- `toDate`: The end date for filtering orders.
- `callback`: An instance of `ApiResponseCallback<OrderResponse>` to handle the API response. It defines two methods:
  - `onSuccess`: Called when the API request is successful, receiving an `OrderResponse` object.
  - `onError`: Called if there is an error during the API request, receiving an error message.

### Example Usage

```swift
// Initialize the GiftApiHandler
let giftApiHandler = GiftApiHandler()

// Set parameters
let apiKey = "YOUR_API_KEY"
let page = 1 // Example page number
let fromDate = "2024-01-01"
let toDate = "2024-02-01"

// Make an API call to retrieve orders by page
giftApiHandler.listOrdersByPage(apiKey: apiKey, page: page, fromDate: fromDate, toDate: toDate) { result, errorMessage in
    if let result = result {
        // Handle successful response here
    } else if let errorMessage = errorMessage {
        // Handle error response here
    }
}
```

## getAllBrands

This method retrieves a list of all brands from the Gift API.

### Parameters

- `apiKey`: The API key required to authenticate the request.
- `callback`: An instance of `ApiResponseCallback<BrandResponse>` to handle the API response. It defines two methods:
  - `onSuccess`: Called when the API request is successful, receiving a `BrandResponse` object.
  - `onError`: Called if there is an error during the API request, receiving an error message.

### Example Usage

```swift
// Initialize the GiftApiHandler
let giftApiHandler = GiftApiHandler()

// Set parameters
let apiKey = "YOUR_API_KEY"

// Make an API call to retrieve all brands
giftApiHandler.getAllBrands(apiKey: apiKey) { result, errorMessage in
    if let result = result {
        // Handle successful response here
    } else if let errorMessage = errorMessage {
        // Handle error response here
    }
}
```
## getBrandsByCountry

This method retrieves a list of brands based on the specified country from the Gift API.

### Parameters

- `apiKey`: The API key required to authenticate the request.
- `country`: The ISO code of the country for which to retrieve brands.
- `callback`: An instance of `ApiResponseCallback<BrandResponse>` to handle the API response. It defines two methods:
  - `onSuccess`: Called when the API request is successful, receiving a `BrandResponse` object.
  - `onError`: Called if there is an error during the API request, receiving an error message.

### Example Usage

```swift
// Initialize the GiftApiHandler
let giftApiHandler = GiftApiHandler()

// Set parameters
let apiKey = "YOUR_API_KEY"
let country = "COUNTRY_ISO_CODE"

// Make an API call to retrieve brands by country
giftApiHandler.getBrandsByCountry(apiKey: apiKey, country: country) { result, errorMessage in
    if let result = result {
        // Handle successful response here
    } else if let errorMessage = errorMessage {
        // Handle error response here
    }
}
```

## getBrandByCode

This method retrieves a brand based on the specified brand code from the Gift API.

### Parameters

- `apiKey`: The API key required to authenticate the request.
- `brandCode`: The code of the brand to retrieve.
- `callback`: An instance of `ApiResponseCallback<BrandResponse>` to handle the API response. It defines two methods:
  - `onSuccess`: Called when the API request is successful, receiving a `BrandResponse` object.
  - `onError`: Called if there is an error during the API request, receiving an error message.

### Example Usage

```swift
// Initialize the GiftApiHandler
let giftApiHandler = GiftApiHandler()

// Set parameters
let apiKey = "YOUR_API_KEY"
let brandCode = "BRAND_CODE"

// Make an API call to retrieve a brand by code
giftApiHandler.getBrandByCode(apiKey: apiKey, brandCode: brandCode) { result, errorMessage in
    if let result = result {
        // Handle successful response here
    } else if let errorMessage = errorMessage {
        // Handle error response here
    }
}
```

```java
// Initialize the GiftApiHandler
GiftApiHandler giftApiHandler = new GiftApiHandler();

// Set parameters
String apiKey = "YOUR_API_KEY";
boolean isActive = true; // Change to false if you want to retrieve inactive brands

// Make an API call to retrieve active or inactive brands
giftApiHandler.getActiveBrands(apiKey, isActive, new ApiResponseCallback<BrandResponse>() {
    @Override
    public void onSuccess(BrandResponse result) {
        // Handle successful response here
    }

    @Override
    public void onError(String errorMessage) {
        // Handle error response here
    }
});
```

```java
// Initialize the GiftApiHandler
GiftApiHandler giftApiHandler = new GiftApiHandler();

// Set parameters
String apiKey = "YOUR_API_KEY";
int categoryId = 123; // Replace with the desired category ID

// Make an API call to retrieve brands by category ID
giftApiHandler.getBrandsByCategoryId(apiKey, categoryId, new ApiResponseCallback<BrandResponse>() {
    @Override
    public void onSuccess(BrandResponse result) {
        // Handle successful response here
    }

    @Override
    public void onError(String errorMessage) {
        // Handle error response here
    }
});
```

// Initialize the GiftApiHandler
let giftApiHandler = GiftApiHandler()

// Set parameters
let apiKey = "YOUR_API_KEY"
let brandCode = "BRAND_CODE" // Replace with the desired brand code

// Make an API call to retrieve brand locations
giftApiHandler.getBrandLocations(apiKey: apiKey, brandCode: brandCode) { result in
    switch result {
    case .success(let response):
        // Handle successful response here
    case .failure(let errorMessage):
        // Handle error response here
    }
}
```

// getBrandLocations

// This method retrieves locations associated with a specific brand code from the Gift API.

// Parameters:
// - apiKey: The API key required to authenticate the request.
// - brandCode: The code of the brand for which to retrieve locations.
// - callback: An instance of `ApiResponseCallback<BrandLocationResponse>` to handle the API response. It defines two methods:
//   - `onSuccess`: Called when the API request is successful, receiving a `BrandLocationResponse` object.
//   - `onError`: Called if there is an error during the API request, receiving an error message.

// Example Usage:

// Initialize the GiftApiHandler
let giftApiHandler = GiftApiHandler()

// Set parameters
let apiKey = "YOUR_API_KEY"
let brandCode = "BRAND_CODE" // Replace with the desired brand code

// Make an API call to retrieve brand locations
giftApiHandler.getBrandLocations(apiKey: apiKey, brandCode: brandCode) { result, errorMessage in
    if let result = result {
        // Handle successful response here
    } else if let errorMessage = errorMessage {
        // Handle error response here
    }
}
// getLocationByCityId

// This method retrieves location details associated with a specific city ID and brand code from the Gift API.

// Parameters:
// - apiKey: The API key required to authenticate the request.
// - brandCode: The code of the brand for which to retrieve location details.
// - cityId: The ID of the city for which to retrieve location details.
// - callback: An instance of `ApiResponseCallback<BrandLocationCityResponse>` to handle the API response. It defines two methods:
//   - `onSuccess`: Called when the API request is successful, receiving a `BrandLocationCityResponse` object.
//   - `onError`: Called if there is an error during the API request, receiving an error message.

// Example Usage:

// Initialize the GiftApiHandler
let giftApiHandler = GiftApiHandler()

// Set parameters
let apiKey = "YOUR_API_KEY"
let brandCode = "BRAND_CODE" // Replace with the desired brand code
let cityId = "CITY_ID" // Replace with the desired city ID

// Make an API call to retrieve location details by city ID
giftApiHandler.getLocationByCityId(apiKey: apiKey, brandCode: brandCode, cityId: cityId) { result, errorMessage in
    if let result = result {
        // Handle successful response here
    } else if let errorMessage = errorMessage {
        // Handle error response here
    }
}
// getCategories

// This method retrieves categories from the Gift API.

// Parameters:
// - apiKey: The API key required to authenticate the request.
// - callback: An instance of `ApiResponseCallback<CategoryResponse>` to handle the API response. It defines two methods:
//   - `onSuccess`: Called when the API request is successful, receiving a `CategoryResponse` object.
//   - `onError`: Called if there is an error during the API request, receiving an error message.

// Example Usage:

// Initialize the GiftApiHandler
let giftApiHandler = GiftApiHandler()

// Set parameters
let apiKey = "YOUR_API_KEY"

// Make an API call to retrieve categories
giftApiHandler.getCategories(apiKey: apiKey) { result, errorMessage in
    if let result = result {
        // Handle successful response here
    } else if let errorMessage = errorMessage {
        // Handle error response here
    }
}
// getCountries

// This method retrieves countries from the Gift API.

// Parameters:
// - apiKey: The API key required to authenticate the request.
// - callback: An instance of `ApiResponseCallback<CountryResponse>` to handle the API response. It defines two methods:
//   - `onSuccess`: Called when the API request is successful, receiving a `CountryResponse` object.
//   - `onError`: Called if there is an error during the API request, receiving an error message.

// Example Usage:

// Initialize the GiftApiHandler
let giftApiHandler = GiftApiHandler()

// Set parameters
let apiKey = "YOUR_API_KEY"

// Make an API call to retrieve countries
giftApiHandler.getCountries(apiKey: apiKey) { result, errorMessage in
    if let result = result {
        // Handle successful response here
    } else if let errorMessage = errorMessage {
        // Handle error response here
    }
}
// getCurrencyExchangeRates

// This method retrieves currency exchange rates from the Gift API.

// Parameters:
// - apiKey: The API key required to authenticate the request.
// - callback: An instance of `ApiResponseCallback<ExchangeRateResponse>` to handle the API response. It defines two methods:
//   - `onSuccess`: Called when the API request is successful, receiving an `ExchangeRateResponse` object.
//   - `onError`: Called if there is an error during the API request, receiving an error message.

// Example Usage:

// Initialize the GiftApiHandler
let giftApiHandler = GiftApiHandler()

// Set parameters
let apiKey = "YOUR_API_KEY"

// Make an API call to retrieve currency exchange rates
giftApiHandler.getCurrencyExchangeRates(apiKey: apiKey) { result, errorMessage in
    if let result = result {
        // Handle successful response here
    } else if let errorMessage = errorMessage {
        // Handle error response here
    }
}
// getCredentials

// This method retrieves credentials from the Gift API.

// Parameters:
// - apiKey: The API key required to authenticate the request.
// - callback: An instance of `ApiResponseCallback<CredentialsResponse>` to handle the API response. It defines two methods:
//   - `onSuccess`: Called when the API request is successful, receiving a `CredentialsResponse` object.
//   - `onError`: Called if there is an error during the API request, receiving an error message.

// Example Usage:

// Initialize the GiftApiHandler
let giftApiHandler = GiftApiHandler()

// Set parameters
let apiKey = "YOUR_API_KEY"

// Make an API call to retrieve credentials
giftApiHandler.getCredentials(apiKey: apiKey) { result, errorMessage in
    if let result = result {
        // Handle successful response here
    } else if let errorMessage = errorMessage {
        // Handle error response here
    }
}
// generateCredentials

// This method generates credentials from the Gift API.

// Parameters:
// - apiKey: The API key required to authenticate the request.
// - callback: An instance of `ApiResponseCallback<CredentialsGenerationResponse>` to handle the API response. It defines two methods:
//   - `onSuccess`: Called when the API request is successful, receiving a `CredentialsGenerationResponse` object.
//   - `onError`: Called if there is an error during the API request, receiving an error message.

// Example Usage:

// Initialize the GiftApiHandler
let giftApiHandler = GiftApiHandler()

// Set parameters
let apiKey = "YOUR_API_KEY"

// Make an API call to generate credentials
giftApiHandler.generateCredentials(apiKey: apiKey) { result, errorMessage in
    if let result = result {
        // Handle successful response here
    } else if let errorMessage = errorMessage {
        // Handle error response here
    }
}
// getBrandWebhooks

// This method retrieves webhooks associated with a brand from the Gift API.

// Parameters:
// - apiKey: The API key required to authenticate the request.
// - callback: An instance of `ApiResponseCallback<WebhooksResponse>` to handle the API response. It defines two methods:
//   - `onSuccess`: Called when the API request is successful, receiving a `WebhooksResponse` object.
//   - `onError`: Called if there is an error during the API request, receiving an error message.

// Example Usage:

// Initialize the GiftApiHandler
let giftApiHandler = GiftApiHandler()

// Set parameters
let apiKey = "YOUR_API_KEY"

// Make an API call to retrieve brand webhooks
giftApiHandler.getBrandWebhooks(apiKey: apiKey) { result, errorMessage in
    if let result = result {
        // Handle successful response here
    } else if let errorMessage = errorMessage {
        // Handle error response here
    }
}
// activateWebhook

// This method activates a webhook with a specific ID in the Gift API.
// activateWebhook

// This method activates a webhook with a specific ID in the Gift API.

// Parameters:
// - apiKey: The API key required to authenticate the request.
// - webhookId: The ID of the webhook to be activated.
// - callback: An instance of `ApiResponseCallback<WebhooksActivationResponse>` to handle the API response. It defines two methods:
//   - `onSuccess`: Called when the API request is successful, receiving a `WebhooksActivationResponse` object.
//   - `onError`: Called if there is an error during the API request, receiving an error message.

// Example Usage:

// Initialize the GiftApiHandler
let giftApiHandler = GiftApiHandler()

// Set parameters
let apiKey = "YOUR_API_KEY"
let webhookId = "WEBHOOK_ID"

// Make an API call to activate the webhook
giftApiHandler.activateWebhook(apiKey: apiKey, webhookId: webhookId) { result, errorMessage in
    if let result = result {
        // Handle successful response here
    } else if let errorMessage = errorMessage {
        // Handle error response here
    }
}
// deactivateWebhook

// This method deactivates a webhook with a specific ID in the Gift API.

// Parameters:
// - apiKey: The API key required to authenticate the request.
// - webhookId: The ID of the webhook to be deactivated.
// - callback: An instance of `ApiResponseCallback<WebhooksDeactivationResponse>` to handle the API response. It defines two methods:
//   - `onSuccess`: Called when the API request is successful, receiving a `WebhooksDeactivationResponse` object.
//   - `onError`: Called if there is an error during the API request, receiving an error message.
// deactivateWebhook

// This method deactivates a webhook with a specific ID in the Gift API.

// Parameters:
// - apiKey: The API key required to authenticate the request.
// - webhookId: The ID of the webhook to be deactivated.
// - callback: An instance of `ApiResponseCallback<WebhooksDeactivationResponse>` to handle the API response. It defines two methods:
//   - `onSuccess`: Called when the API request is successful, receiving a `WebhooksDeactivationResponse` object.
//   - `onError`: Called if there is an error during the API request, receiving an error message.

// Example Usage:

// Initialize the GiftApiHandler
let giftApiHandler = GiftApiHandler()

// Set parameters
let apiKey = "YOUR_API_KEY"
let webhookId = "WEBHOOK_ID"

// Make an API call to deactivate the webhook
giftApiHandler.deactivateWebhook(apiKey: apiKey, webhookId: webhookId) { result, errorMessage in
    if let result = result {
        // Handle successful response here
    } else if let errorMessage = errorMessage {
        // Handle error response here
    }
}
// createOrder

// This method creates a new order in the Gift API.

// Parameters:
// - apiKey: The API key required to authenticate the request.
// - request: An instance of `OrderCreateRequest` containing the details of the order to be created.
// - callback: An instance of `ApiResponseCallback<OrderCreateResponse>` to handle the API response. It defines two methods:
//   - `onSuccess`: Called when the API request is successful, receiving an `OrderCreateResponse` object containing information about the created order.
//   - `onError`: Called if there is an error during the API request, receiving an error message.

// Example Usage:

// Create an instance of OrderCreateRequest and set its properties
let orderRequest = OrderCreateRequest()
orderRequest.referenceId = "124DSF"
orderRequest.notify = 1
orderRequest.brandCode = "184726"
orderRequest.currency = "AED"
orderRequest.amount = 200
orderRequest.country = "AE"
orderRequest.receiverName = "Jhon"
orderRequest.receiverEmail = "jhon@example.com"
orderRequest.receiverPhone = "0551111111"
orderRequest.message = "Well Done!,\nI thought you would like this gift!"
let extraFields: [String: String] = [
    "department": "Information Technology",
    "customer_id": "A1232",
    "pi_12": "12Ag"
]
orderRequest.extraFields = extraFields
orderRequest.deliveryLanguage = "en"

// Make API call to create the order
giftApiHandler.createOrder(apiKey: apiKey, request: orderRequest) { result, errorMessage in
    if let result = result {
        // Handle successful response here
    } else if let errorMessage = errorMessage {
        // Handle error response here
    }
}
```swift
// topupAccount

// This method initiates a top-up request to add funds to a user's account in the Gift API.

// Parameters:
// - apiKey: The API key required to authenticate the request.
// - request: An instance of `TopupRequest` containing the details of the top-up request, including the currency, amount, and reference ID.
// - callback: An instance of `ApiResponseCallback<TopupResponse>` to handle the API response. It defines two methods:
//   - `onSuccess`: Called when the API request is successful, receiving a `TopupResponse` object containing information about the top-up transaction.
//   - `onError`: Called if there is an error during the API request, receiving an error message.

// Example Usage:

// Create an instance of TopupRequest and set its properties
let topupRequest = TopupRequest()
topupRequest.currency = "AED"
topupRequest.amount = 1000
topupRequest.referenceId = "12335"

// Make API call to initiate the top-up request
giftApiHandler.topupAccount(apiKey: apiKey, request: topupRequest) { result, errorMessage in
    if let result = result {
        // Handle successful response here
    } else if let errorMessage = errorMessage {
        // Handle error response here
    }
}
```

```swift
// activateCredentials

// This method activates the credentials associated with a given API key in the Gift API.

// Parameters:
// - apiKey: The API key required to authenticate the request.
// - request: An instance of `CredentialActivationRequest` containing the API key to be activated.
// - callback: An instance of `ApiResponseCallback<CredentialActivationResponse>` to handle the API response. It defines two methods:
//   - `onSuccess`: Called when the API request is successful, receiving a `CredentialActivationResponse` object containing information about the activation status.
//   - `onError`: Called if there is an error during the API request, receiving an error message.

// Example Usage:

// Create an instance of CredentialActivationRequest and set its apiKey property
let activationRequest = CredentialActivationRequest()
activationRequest.apiKey = "JMWIB0YUDTJSDJAPRW9D"

// Make API call to activate the credentials
giftApiHandler.activateCredentials(apiKey: apiKey, request: activationRequest) { result, errorMessage in
    if let result = result {
        // Handle successful response here
    } else if let errorMessage = errorMessage {
        // Handle error response here
    }
}
```

```swift
// createWebhook

// This method creates a new webhook in the Gift API.

// Parameters:
// - apiKey: The API key required to authenticate the request.
// - request: An instance of `WebhookCreateRequest` containing the details of the webhook to be created, including the URL where notifications will be sent.
// - callback: An instance of `ApiResponseCallback<WebhookCreateResponse>` to handle the API response. It defines two methods:
//   - `onSuccess`: Called when the API request is successful, receiving a `WebhookCreateResponse` object containing information about the created webhook, including its URL.
//   - `onError`: Called if there is an error during the API request, receiving an error message.

// Example Usage:

// Create an instance of WebhookCreateRequest and set its url property
let webhookRequest = WebhookCreateRequest()
webhookRequest.url = "https://yourapp.com/webhooks/brands/<notification_url_1>"

// Make API call to create the webhook
giftApiHandler.createWebhook(apiKey: apiKey, request: webhookRequest) { result, errorMessage in
    if let result = result {
        // Handle successful response here
    } else if let errorMessage = errorMessage {
        // Handle error response here
    }
}
```

```swift
// simulateWebhook

// This method simulates a webhook trigger in the Gift API.

// Parameters:
// - apiKey: The API key required to authenticate the request.
// - webhookId: The ID of the webhook to be simulated.
// - callback: An instance of `ApiResponseCallback<SimulateWebhookResponse>` to handle the API response. It defines two methods:
//   - `onSuccess`: Called when the API request is successful, receiving a `SimulateWebhookResponse` object containing information about the simulated webhook.
//   - `onError`: Called if there is an error during the API request, receiving an error message.

// Example Usage:

// Make API call to simulate the webhook
giftApiHandler.simulateWebhook(apiKey: apiKey, webhookId: "webhookId") { result, errorMessage in
    if let result = result {
        // Handle successful response here
    } else if let errorMessage = errorMessage {
        // Handle error response here
    }
}
```