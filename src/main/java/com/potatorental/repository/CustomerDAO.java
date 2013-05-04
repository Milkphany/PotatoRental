package com.potatorental.repository;

import com.potatorental.model.Customer;

import javax.sql.DataSource;
import java.util.List;

/**
 * User: Milky
 * Date: 5/2/13
 * Time: 1:17 PM
 */
public interface CustomerDAO {

    public void createCustomer();

    public Customer getCustomerByEmail(String email);

    public void updateCustomer();
}
