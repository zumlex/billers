//
//  Lookup Bill.swift
//  intergrated-billers
//

//

package com.dking.ibsdk.response.ding

import com.google.gson.annotations.Expose
import com.google.gson.annotations.SerializedName

data class LookupBill(
    @SerializedName("Items")
    @Expose
    var items: List<LookupBillItem>? = null,

    @SerializedName("ResultCode")
    @Expose
    var resultCode: Int? = null,

    @SerializedName("ErrorCodes")
    @Expose
    var errorCodes: List<ErrorCode>? = null
)

