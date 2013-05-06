package com.potatorental.repository;

import com.potatorental.model.Customer;
import com.potatorental.model.Person;

import javax.sql.DataSource;
import java.util.List;

/**
 * User: Milky
 * Date: 5/2/13
 * Time: 1:17 PM
 */
public interface PersonDao {

    public Person getPersonByEmail(String email);

    public void createPerson();

    public void updatePerson();
}
