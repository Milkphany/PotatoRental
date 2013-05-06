package com.potatorental.model;

/**
 * User: Milky
 * Date: 5/6/13
 * Time: 11:58 AM
 */
public class Location {

    private int zipCode;

    private String city;
    private String state;

    public Location() {

    }

    public Location(int zipCode, String state, String city) {
        this.zipCode = zipCode;
        this.state = state;
        this.city = city;
    }

    public int getZipCode() {
        return zipCode;
    }

    public void setZipCode(int zipCode) {
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
