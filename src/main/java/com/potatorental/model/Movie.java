package com.potatorental.model;

import javax.validation.constraints.NotNull;

/**
 * User: milky
 * Date: 5/6/13
 * Time: 8:11 PM
 */
public class Movie {

    private Integer id;

    private String name;

    private String type;

    private Integer rating;

    @NotNull
    private Float distrFee;

    @NotNull
    private Integer numCopies;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Integer getRating() {
        return rating;
    }

    public void setRating(Integer rating) {
        this.rating = rating;
    }

    public Float getDistrFee() {
        return distrFee;
    }

    public void setDistrFee(Float distrFee) {
        this.distrFee = distrFee;
    }

    public Integer getNumCopies() {
        return numCopies;
    }

    public void setNumCopies(Integer numCopies) {
        this.numCopies = numCopies;
    }
}
