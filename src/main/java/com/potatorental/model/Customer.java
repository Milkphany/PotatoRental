package com.potatorental.model;

/**
 * User: Milky
 * Date: 4/22/13
 * Time: 4:32 AM
 */
public class Customer extends Person {

    private int rating;

    public Customer() {
        super();
    }

    public Customer(Person person) {
        this.ssn = person.ssn;
        this.firstName = person.firstName;
        this.lastName = person.lastName;
        this.address = person.address;
        this.zipCode = person.zipCode;
        this.email = person.email;
        this.pass = person.pass;
        this.telephone = person.telephone;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }
}
