//
//  cancel transfers.swift
//  intergrated-billers
//
//  Created by okan on 17.02.2024.
//

import Foundation

public class TopupConnectApiHandler {
    
    public init() {
        // Initialization logic here, if needed
    }
    
    public func cancelTransfers(apiKey: String, request: CancelTransfersRequest, completion: @escaping (CancelTransfer?, String?) -> Void) {
        // Send API request to cancel transfers based on the specified parameters using the provided API key
        
        // For demonstration purposes, let's simulate a successful API response with dummy data
        let dummyCancelTransfer = CancelTransfer(successfulTransfers: ["TransferRef1", "TransferRef2"])
        completion(dummyCancelTransfer, nil)
    }
}

public struct CancelTransfersRequest {
    let cancelTransferItems: [CancelTransferItem]
}

public struct CancelTransferItem {
    let transferId: TransferId
    let batchItemRef: String
}

public struct TransferId {
    let transferRef: String
    let distributorRef: String
}

public struct CancelTransfer {
    let successfulTransfers: [String]
}

