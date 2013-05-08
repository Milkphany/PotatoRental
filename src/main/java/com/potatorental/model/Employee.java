package com.potatorental.model;

import org.hibernate.validator.constraints.NotBlank;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.NumberFormat;

import javax.validation.constraints.Past;
import java.sql.Date;

/**
 * User: Milky
 * Date: 4/22/13
 * Time: 4:34 AM
 */
public class Employee extends Person {

    @NotBlank
    private Integer id;

    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
    @Past
    private Date startDate;

    @NumberFormat(style = NumberFormat.Style.CURRENCY)
    private Float hourlyRate;

    private Boolean isManager;

    public Employee() {
        super();
    }

    public Employee(Person person) {
        this.ssn = person.ssn;
        this.firstName = person.firstName;
        this.lastName = person.lastName;
        this.address = person.address;
        this.zipCode = person.zipCode;
        this.email = person.email;
        this.pass = person.pass;
        this.telephone = person.telephone;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Float getHourlyRate() {
        return hourlyRate;
    }

    public void setHourlyRate(Float hourlyRate) {
        this.hourlyRate = hourlyRate;
    }

    public Boolean getIsManager() {
        return isManager;
    }

    public void setIsManager(Boolean manager) {
        isManager = manager;
    }
}
