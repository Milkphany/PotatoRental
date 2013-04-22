package com.potatorental.classes;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

/**
 * User: Milky
 * Date: 4/22/13
 * Time: 4:32 AM
 */
public class Customer extends Person {

    @Pattern(regexp=".*@.*")
    private String email;

    @NotNull
    private int id, rating;

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

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
