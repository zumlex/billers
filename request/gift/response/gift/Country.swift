//
//  Country.swift
//  intergrated-billers
//

//


package com.dking.ibsdk.response.gift;


import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

import java.util.List;


public class Country {

    @SerializedName("name")
    @Expose
    private String name;
    @SerializedName("code")
    @Expose
    private String code;
    @SerializedName("currency")
    @Expose
    private CountryCurrency countryCurrency;
    @SerializedName("timezone")
    @Expose
    private String timezone;
    @SerializedName("mobile_number_formats")
    @Expose
    private List<String> mobileNumberFormats;
    @SerializedName("mobile_number_regex")
    @Expose
    private String mobileNumberRegex;
    @SerializedName("detail_url")
    @Expose
    private String detailUrl;
    @SerializedName("languages")
    @Expose
    private List<CountryLanguage> languages;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public CountryCurrency getCountryCurrency() {
        return countryCurrency;
    }
    public void setCountryCurrency(CountryCurrency countryCurrency) {
        this.countryCurrency = countryCurrency;
    }
    public String getTimezone() {
        return timezone;
    }

    public void setTimezone(String timezone) {
        this.timezone = timezone;
    }

    public List<String> getMobileNumberFormats() {
        return mobileNumberFormats;
    }

    public void setMobileNumberFormats(List<String> mobileNumberFormats) {
        this.mobileNumberFormats = mobileNumberFormats;
    }
    public String getMobileNumberRegex() {
        return mobileNumberRegex;
    }

    public void setMobileNumberRegex(String mobileNumberRegex) {
        this.mobileNumberRegex = mobileNumberRegex;
    }

    public String getDetailUrl() {
        return detailUrl;
    }

    public void setDetailUrl(String detailUrl) {
        this.detailUrl = detailUrl;
    }

    public List<CountryLanguage> getLanguages() {
        return languages;
    }

    public void setLanguages(List<CountryLanguage> languages) {
        this.languages = languages;
    }

}

