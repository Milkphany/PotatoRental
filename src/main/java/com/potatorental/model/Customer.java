package com.potatorental.model;

/**
 * User: Milky
 * Date: 4/22/13
 * Time: 4:32 AM
 */
public class Customer extends Person {

    private int id, rating;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }
}
