package com.potatorental.classes;

import org.hibernate.validator.constraints.Range;
import org.springframework.format.annotation.NumberFormat;
import javax.validation.constraints.Size;

/**
 * User: Milky
 * Date: 4/22/13
 * Time: 3:29 AM
 */
public class Person {

    @Size(min = 2, max = 64, message = "not a valid name")
    private String firstName, lastName;

    @Size(min = 3, max = 128, message = "not a valid address")
    private String address;

    @NumberFormat(pattern = "(###) ###-####")
    private int telephone;

    @Range(min = 10000, max = 99999, message = "not a valid zipcode")
    private int zipCode;

    @NumberFormat(pattern = "##########")
    private int ssn;

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getTelephone() {
        return telephone;
    }

    public void setTelephone(int telephone) {
        this.telephone = telephone;
    }

    public int getZipCode() {
        return zipCode;
    }

    public void setZipCode(int zipCode) {
        this.zipCode = zipCode;
    }

    public int getSsn() {
        return ssn;
    }

    public void setSsn(int ssn) {
        this.ssn = ssn;
    }
}
