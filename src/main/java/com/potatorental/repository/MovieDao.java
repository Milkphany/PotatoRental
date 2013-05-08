package com.potatorental.repository;

import com.potatorental.model.Actor;
import com.potatorental.model.Movie;

import java.util.List;

/**
 * User: milky
 * Date: 5/6/13
 * Time: 8:27 PM
 */
public interface MovieDao {

    public List<Movie> getAllMovies();

    public List<Movie> getNumMovies(int numMovies);

    public Movie getMovieById(Integer movieid);

    public Movie getMovieByName(String name);

    public void insertMovie(Movie movie);

    public List<Actor> getMovieActors(Movie movie);

    /**
     * Popular movies will be defined by movies that are rated 5 or higher
     *
     * @param numMovies number of movies to return
     * @return list of movies that are popular
     */
    public List<Movie> getPopularMovies(int numMovies);

}
