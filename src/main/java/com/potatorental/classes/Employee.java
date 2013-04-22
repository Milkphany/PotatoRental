package com.potatorental.classes;

import org.hibernate.validator.constraints.NotBlank;
import org.joda.time.LocalDate;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.NumberFormat;

import javax.validation.constraints.Past;

/**
 * User: Milky
 * Date: 4/22/13
 * Time: 4:34 AM
 */
public class Employee extends Person {

    @NotBlank
    private int id;

    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
    @Past
    private LocalDate startDate;

    @NumberFormat(style = NumberFormat.Style.CURRENCY)
    private float hourlyRate;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public LocalDate getStartDate() {
        return startDate;
    }

    public void setStartDate(LocalDate startDate) {
        this.startDate = startDate;
    }

    public float getHourlyRate() {
        return hourlyRate;
    }

    public void setHourlyRate(float hourlyRate) {
        this.hourlyRate = hourlyRate;
    }
}
