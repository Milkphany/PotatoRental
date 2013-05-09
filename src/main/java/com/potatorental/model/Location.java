package com.potatorental.model;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

/**
 * User: Milky
 * Date: 5/6/13
 * Time: 11:58 AM
 */
public class Location {

    @NotNull
    @Min(10000)
    @Max(999999)
    private Integer zipCode;

    private String city;
    private String state;

    public Location() {

    }

    public Location(int zipCode, String state, String city) {
        this.zipCode = zipCode;
        this.state = state;
        this.city = city;
    }

    public Integer getZipCode() {
        return zipCode;
    }

    public void setZipCode(Integer zipCode) {
        this.zipCode = zipCode;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }
}
