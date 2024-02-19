//
//  LookupBillsRequest.swift
//  intergrated-billers
//

//

package com.dking.ibsdk.request.ding;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

import java.util.List;


public class LookupBillsRequest {

    @SerializedName("SkuCode")
    @Expose
    private String skuCode;
    @SerializedName("AccountNumber")
    @Expose
    private String accountNumber;
    @SerializedName("Settings")
    @Expose
    private List<Setting> settings;

    public String getSkuCode() {
        return skuCode;
    }

    public void setSkuCode(String skuCode) {
        this.skuCode = skuCode;
    }

    public String getAccountNumber() {
        return accountNumber;
    }

    public void setAccountNumber(String accountNumber) {
        this.accountNumber = accountNumber;
    }

    public List<Setting> getSettings() {
        return settings;
    }

    public void setSettings(List<Setting> settings) {
        this.settings = settings;
    }

}

