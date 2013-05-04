package com.potatorental.model;

import org.hibernate.validator.constraints.Range;
import org.springframework.format.annotation.NumberFormat;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;
import java.math.BigDecimal;

/**
 * User: Milky
 * Date: 4/22/13
 * Time: 3:29 AM
 */
public class Person {

    @Size(min = 2, max = 64, message = "Name is not valid")
    private String firstName, lastName;

    @Size(min = 3, max = 128, message = "Address is not valid")
    private String address;

    @NumberFormat(pattern = "(###) ###-####")
    private BigDecimal telephone;

    @Range(min = 10000, max = 99999, message = "Zipcode is not valid")
    private Integer zipCode;

    @NotNull(message = "SSN cannot be empty")
    @NumberFormat(pattern = "##########")
    private Integer ssn;

    @Pattern(regexp = ".*@.*", message = "Email is not valid")
    private String email;

    @NotNull(message = "Password cannot be empty")
    private String password;

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

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

    public BigDecimal getTelephone() {
        return telephone;
    }

    public void setTelephone(BigDecimal telephone) {
        this.telephone = telephone;
    }

    public Integer getZipCode() {
        return zipCode;
    }

    public void setZipCode(Integer zipCode) {
        this.zipCode = zipCode;
    }

    public Integer getSsn() {
        return ssn;
    }

    public void setSsn(Integer ssn) {
        this.ssn = ssn;
    }
}
