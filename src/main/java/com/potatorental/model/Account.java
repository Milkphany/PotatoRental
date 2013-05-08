package com.potatorental.model;

import java.util.Date;

/**
 * Created with IntelliJ IDEA.
 * User: milky
 * Date: 5/8/13
 * Time: 2:47 PM
 * To change this template use File | Settings | File Templates.
 */
public class Account {

    public enum AccountType {
        lim, one, two, three
    }

    private Integer id;
    private Integer customer;
    private AccountType type;
    private Date dateOpened;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getCustomer() {
        return customer;
    }

    public void setCustomer(Integer customer) {
        this.customer = customer;
    }

    public AccountType getType() {
        return type;
    }

    public void setType(AccountType type) {
        this.type = type;
    }

    public Date getDateOpened() {
        return dateOpened;
    }

    public void setDateOpened(Date dateOpened) {
        this.dateOpened = dateOpened;
    }
}
