package com.potatorental.repository;

import com.potatorental.model.Customer;
import com.potatorental.model.Location;
import com.potatorental.model.Person;

/**
 * User: Milky
 * Date: 5/9/13
 * Time: 12:46 AM
 */
public interface PersonDao {

    public void insertCustomer(Customer customer, Location location);

    public boolean updateCustomer(Customer customer);

    public boolean isEmailExist(String email);

    public Person getPersonByEmail(String email);

    public Location getLocationByZipCode(Integer zipCode);
}
