package com.potatorental.repository;

import com.potatorental.model.*;

import java.util.List;
import java.util.Map;

/**
 * User: Milky
 * Date: 5/9/13
 * Time: 2:40 AM
 */
public interface PersonsDao {

    public void insertCustomer(Customer customer, Location location);

    public boolean updateCustomer(Customer customer);

    public boolean isEmailExist(String email);

    public Person getPersonByEmail(String email);

    public Location getLocationByZipCode(Integer zipCode);

    public void recordOrder(int employeeid, int accountid, int movieid);

    public Employee getEmployeeByEmail(String email);

    public List<Customer> getAllCustomers();
}
