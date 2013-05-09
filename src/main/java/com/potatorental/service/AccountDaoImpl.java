package com.potatorental.service;

import com.potatorental.model.Account;
import com.potatorental.model.Account.AccountType;
import com.potatorental.model.Customer;
import com.potatorental.model.Purchase;
import com.potatorental.model.Movie;
import com.potatorental.repository.AccountDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import javax.sql.DataSource;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

/**
 * Created with IntelliJ IDEA.
 * User: milky
 * Date: 5/8/13
 * Time: 5:08 PM
 * To change this template use File | Settings | File Templates.
 */
public class AccountDaoImpl implements AccountDao {

    private JdbcTemplate jdbcTemplate;

    @Autowired
    public AccountDaoImpl(DataSource dataSource) {
        jdbcTemplate = new JdbcTemplate(dataSource);
    }

    @Override
    public AccountType getType(Customer customer) {
        return null;  //To change body of implemented methods use File | Settings | File Templates.
    }

    @Override
    public Account getAccount(Customer customer) {
        String sql = "select * from account where customer = ?";
        return jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<>(Account.class), customer.getSsn());
    }

    @Override
    public List<Movie> getQueue(Account account) {
        String sql = "select m.name, m.id, m.type, m.distrfee, m.numcopies, m.rating " +
                "from movie m, movieq q " +
                "where m.id = q.movieid and accountid = ? ";

        return PotatoService.addMoviesFromMap(jdbcTemplate.queryForList(sql, account.getId()));
    }

    @Override
    public Map<Customer, Purchase> getAllPurchases() {
        return null;
    }

    @Override
    public Map<Customer, Map<Account, Movie>> getAllQueues() {
        String sql = "select p.email, a.id, a.type, q.movieid, m.name  " +
                "from person p, movieq q, account a, movie m " +
                "where p.ssn = a.customer and q.accountid = a.id and m.id = q.movieid";

        Map<Customer, Map<Account, Movie>> queues = new LinkedHashMap<>();

        for (Map row : jdbcTemplate.queryForList(sql)) {
            Account account = new Account();
            account.setId((Integer) row.get("id"));
            account.setType(AccountType.valueOf((String) row.get("type")));

            Movie movie = new Movie();
            movie.setId((Integer) row.get("movieid"));
            movie.setName((String) row.get("name"));

            Customer customer = new Customer();
            customer.setEmail((String) row.get("email"));

            Map<Account, Movie> accMovies = new LinkedHashMap<>();
            accMovies.put(account, movie);

            queues.put(customer, accMovies);
        }

        return queues;
    }

    @Override
    public List<Purchase> getPurchase(Account account) {
        String sql = "SELECT p.id, datetime, returndate, m.id as movieid from movie m, rental r, purchase p " +
                "WHERE m.id = r.movieid  and accountid = ? and p.id = r.purchid order by datetime desc";

        return PotatoService.addPurchaseFromMap(jdbcTemplate.queryForList(sql, account.getId()));
    }

    @Override
    public List<Movie> getQueue(Customer customer) {
        return getQueue(getAccount(customer));
    }

    /*@Override
    public List<Movie> getPurchase(Account account) {
        String sql = "select m.name, m.id " +
                "from rental r, purchase p, movie m " +
                "where m.id = r.movieid and p.id = r.purchid and r.accountid = ?";
        return PotatoService.addMoviesFromMap(jdbcTemplate.queryForList(sql, account.getId()));
    }*/



    @Override
    public boolean isMovieQueued(Account account, int movieid) {
        String sql = "select exists(select 1 from movieq where accountid = ? and movieid = ?)";
        return jdbcTemplate.queryForObject(sql, Boolean.class, account.getId(), movieid);
    }

    @Override
    public void insertAccount(Customer customer, AccountType accountType) {
        String sql = "insert into account (dateopened, type, customer) values (?, ?, ?)";
        jdbcTemplate.update(sql, new Date(), accountType.name(), customer.getSsn());
    }

    @Override
    public boolean addToQueue(Account account, int movieid) {
        String checkNum = "select numcopies from movie where id = ?";
        String checkDup = "select count(*) from movieq where accountid = ? and movieid = ?";

        if (jdbcTemplate.queryForObject(checkNum, Integer.class, movieid) < 1)
            return false;

        if (jdbcTemplate.queryForObject(checkDup, Integer.class, account.getId(), movieid) > 0)
            return false;

        String remove = "update movie set numcopies = numcopies - 1";
        jdbcTemplate.update(remove);

        String insert = "insert into movieq values(?, ?)";
        jdbcTemplate.update(insert, account.getId(), movieid);

        return true;
    }

    @Override
    public void removeFromQueue(Account account, int movieid) {
        String remove = "delete from movieq where accountid = ? and movieid = ?";
        String addone = "update movie set numcopies = numcopies + 1";

        jdbcTemplate.update(remove, account.getId(), movieid);
        jdbcTemplate.update(addone);
    }

    @Override
    public List<Movie> recommendForPerson(int ssn) {
        String select = "SELECT M.Id, M.Name, M.Type, M.RATING FROM Movie M " +
                "WHERE M.Type IN(SELECT O.MovieType FROM OrderInformation O " +
                "WHERE O.CustId = ? AND " +
                "O.MovieCount >= (SELECT MAX(MovieCount) FROM OrderInformation M " +
                "WHERE M. CustId = ?)) " +
                "AND M.Id NOT IN(SELECT P.MovieId FROM PastOrder P " +
                "WHERE P.CustId = ?) limit ?";

        return PotatoService.addMoviesFromMap(jdbcTemplate.queryForList(select, ssn, ssn, ssn, 50));
    }
}
