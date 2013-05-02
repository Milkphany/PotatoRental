package com.potatorental.model.data;

import com.potatorental.model.Customer;

import java.util.List;

/**
 * User: Milky
 * Date: 5/2/13
 * Time: 1:17 PM
 */
public interface CustomerDAO {

    public void createCustomer();

    public void setDataSource();

    public Customer getCustomer();

    public List<Customer> getAllCustomers();

    public void deleteCustomer(String email);

    public void updateCustomer();
}
