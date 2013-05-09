package com.potatorental.service;

import com.potatorental.model.Actor;
import com.potatorental.model.Movie;
import com.potatorental.repository.MovieDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import javax.sql.DataSource;
import java.util.List;

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
        return PotatoService.addMoviesFromMap(jdbcTemplate.queryForList(sql, numMovies));
    }

    @Override
    public List<Movie> getAllMovies() {
        String sql = "select * from movie";
        return PotatoService.addMoviesFromMap(jdbcTemplate.queryForList(sql));
    }

    @Override
    public Movie getMovieById(Integer movieid) {
        String sql = "select * from movie where id = ?";
        return jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<>(Movie.class), movieid);
    }

    @Override
    public Movie getMovieByName(String name) {
        String sql = "select * from movie where name = ?";
        return jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<>(Movie.class), name);
    }

    @Override
    public void insertMovie(Movie movie) {
        String sql = "insert into movie (name, type, rating, distrfee, numcopies) values (?, ?, ?, ?, ?)";
        jdbcTemplate.update(sql, movie.getName(), movie.getType(),
                movie.getRating(), movie.getDistrFee(), movie.getNumCopies());
    }

    @Override
    public List<Actor> getMovieActors(Movie movie) {
        String sql = "select a.id, a.name, a.mf, a.rating " +
                "from movie m, actor a, appearedin x " +
                "where m.id = ? and m.id = x.movieid and a.id = x.actorid";

        return PotatoService.addActorsFromMap(jdbcTemplate.queryForList(sql, movie.getId()));
    }

    @Override
    public List<Movie> getPopularMovies(int numMovies) {
        String sql = "select * from movie where rating = 5 limit ?";
        return PotatoService.addMoviesFromMap(jdbcTemplate.queryForList(sql, numMovies));
    }
}
