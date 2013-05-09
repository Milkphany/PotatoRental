package com.potatorental.repository;

import com.potatorental.model.Customer;
import com.potatorental.model.Employee;
import com.potatorental.model.Movie;
import com.potatorental.model.Purchase;
import java.util.*;

import java.util.Date;
import java.util.List;

/**
 * User: Milky
 * Date: 5/9/13
 * Time: 12:48 PM
 */
public interface ManagerDao {

    public Float getSalesReport(Date date);

    public Map<Integer, Purchase> getRentalsByName(String name);

    public List<Movie> getRentalsByType(String type);

    public List<Movie> getRentalsByCustomer(Customer customer);

    public Employee bestEmployee();

    public List<Customer> mostActive();

    public List<Movie> mostRented();
}
