//
//  Minimum.swift
//  intergrated-billers
//

//

package com.dking.ibsdk.response.ding

import com.google.gson.annotations.Expose
import com.google.gson.annotations.SerializedName

data class Minimum(
    @SerializedName("CustomerFee")
    @Expose
    var customerFee: Int? = null,

    @SerializedName("DistributorFee")
    @Expose
    var distributorFee: Int? = null,

    @SerializedName("ReceiveValue")
    @Expose
    var receiveValue: Int? = null,

    @SerializedName("ReceiveCurrencyIso")
    @Expose
    var receiveCurrencyIso: String? = null,

    @SerializedName("ReceiveValueExcludingTax")
    @Expose
    var receiveValueExcludingTax: Int? = null,

    @SerializedName("TaxRate")
    @Expose
    var taxRate: Int? = null,

    @SerializedName("TaxName")
    @Expose
    var taxName: String? = null,

    @SerializedName("TaxCalculation")
    @Expose
    var taxCalculation: String? = null,

    @SerializedName("SendValue")
    @Expose
    var sendValue: Int? = null,

    @SerializedName("SendCurrencyIso")
    @Expose
    var sendCurrencyIso: String? = null
)

