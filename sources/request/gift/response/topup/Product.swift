//
//  Product.swift
//  intergrated-billers
//

//

package com.dking.ibsdk.response.ding

import com.google.gson.annotations.Expose
import com.google.gson.annotations.SerializedName

data class Product(
    @SerializedName("ResultCode")
    @Expose
    var resultCode: Int? = null,

    @SerializedName("ErrorCodes")
    @Expose
    var errorCodes: List<ErrorCode>? = null,

    @SerializedName("Items")
    @Expose
    var productItems: List<ProductItem>? = null
)

