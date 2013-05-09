package com.potatorental.model;

/**
 * User: Milky
 * Date: 5/9/13
 * Time: 6:43 AM
 */
public class Rental {

    private Integer accountid, employid, movieid, purchid;

    public Integer getAccountid() {
        return accountid;
    }

    public void setAccountid(Integer accountid) {
        this.accountid = accountid;
    }

    public Integer getEmployid() {
        return employid;
    }

    public void setEmployid(Integer employid) {
        this.employid = employid;
    }

    public Integer getMovieid() {
        return movieid;
    }

    public void setMovieid(Integer movieid) {
        this.movieid = movieid;
    }

    public Integer getPurchid() {
        return purchid;
    }

    public void setPurchid(Integer purchid) {
        this.purchid = purchid;
    }
}
