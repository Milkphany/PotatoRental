package com.potatorental.repository;

import com.potatorental.model.Account;
import com.potatorental.model.Account.AccountType;
import com.potatorental.model.Customer;
import com.potatorental.model.Purchase;
import com.potatorental.model.Movie;

import java.util.List;
import java.util.Map;

/**
 * Created with IntelliJ IDEA.
 * User: milky
 * Date: 5/8/13
 * Time: 5:06 PM
 * To change this template use File | Settings | File Templates.
 */
public interface AccountDao {

    public AccountType getType(Customer customer);

    public Account getAccount(Customer customer);

    public List<Movie> getQueue(Customer customer);

    public List<Movie> getQueue(Account account);

    /*public List<Movie> getPurchase(Account account);*/

    public Map<Customer, Purchase> getAllPurchases();

    public Map<Customer, Map<Account, Movie>> getAllQueues();

    public List<Purchase> getPurchase(Account account);

    public boolean isMovieQueued(Account account, int movieid);

    public void insertAccount(Customer customer, AccountType accountType);

    public boolean addToQueue(Account account, int movieid);

    public void removeFromQueue(Account account, int movieid);

    public List<Movie> recommendForPerson(int ssn);

    public List<Movie> personalRecommendation(int ssn);

}
