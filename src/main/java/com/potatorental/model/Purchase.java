package com.potatorental.model;

import org.joda.time.DateTime;

import java.sql.Timestamp;
import java.util.Date;

/**
 * User: Milky
 * Date: 5/9/13
 * Time: 2:58 AM
 */
public class Purchase {

    private Timestamp dateTime;
    private Date returndate;
    private Integer id;
    private Integer movieid;

    public Date getDate() {
        return returndate;
    }

    public Timestamp getDateTime() {
        return dateTime;
    }

    public void setDateTime(Timestamp dateTime) {
        this.dateTime = dateTime;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getReturndate() {
        return returndate;
    }

    public void setReturndate(Date returndate) {
        this.returndate = returndate;
    }

    public Integer getMovieid() {
        return movieid;
    }

    public void setMovieid(Integer movieid) {
        this.movieid = movieid;
    }
}
