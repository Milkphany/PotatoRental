package com.potatorental.service;

import com.potatorental.model.Movie;
import com.potatorental.repository.MovieDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import javax.sql.DataSource;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created with IntelliJ IDEA.
 * User: milky
 * Date: 5/6/13
 * Time: 8:29 PM
 * To change this template use File | Settings | File Templates.
 */
public class MovieDaoImpl implements MovieDao {

    private JdbcTemplate jdbcTemplate;

    @Autowired
    public MovieDaoImpl(DataSource dataSource) {
        jdbcTemplate = new JdbcTemplate(dataSource);
    }

    @Override
    public List<Movie> getNumMovies(int numMovies) {
        String sql = "select * from movie limit ?";
        List<Map<String, Object>> maps = jdbcTemplate.queryForList(sql, numMovies);

        return addMoviesFromMap(maps);
    }

    @Override
    public List<Movie> getAllMovies() {
        String sql = "select * from movie";
        List<Map<String, Object>> maps = jdbcTemplate.queryForList(sql);

        return addMoviesFromMap(maps);
    }

    private List<Movie> addMoviesFromMap(List<Map<String, Object>> maps) {
        List<Movie> movies = new ArrayList<>();

        for (Map<String, Object> map : maps) {
            Movie movie = new Movie();
            movie.setDistrFee((Float) map.get("distrfee"));
            movie.setId((Integer) map.get("id"));
            movie.setName((String) map.get("name"));
            movie.setNumCopies((Integer) map.get("numcopies"));
            movie.setRating((Integer) map.get("rating"));
            movie.setType((String) map.get("type"));

            movies.add(movie);
        }

        return movies;
    }

    @Override
    public Movie getMovie(Integer movieid) {
        return null;  //To change body of implemented methods use File | Settings | File Templates.
    }

    @Override
    public void insertMovie(Movie movie) {
        String sql = "insert into movie (name, type, rating, distrfee, numcopies) values (?, ?, ?, ?, ?)";
        jdbcTemplate.update(sql, movie.getName(), movie.getType(),
                movie.getRating(), movie.getDistrFee(), movie.getNumCopies());
    }

    @Override
    public List<Movie> getPopularMovies(int numMovies) {
        String sql = "select * from movie where rating = 5 limit ?";
        List<Map<String, Object>> maps = jdbcTemplate.queryForList(sql, numMovies);

        return addMoviesFromMap(maps);
    }
}
