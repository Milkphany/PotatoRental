package com.potatorental.service;

import com.potatorental.model.Actor;
import com.potatorental.model.Purchase;
import com.potatorental.model.Movie;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * User: Milky
 * Date: 5/8/13
 * Time: 6:38 AM
 */
public class PotatoService {

    public static List<Movie> addMoviesFromMap(List<Map<String, Object>> maps) {
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

    public static List<Actor> addActorsFromMap(List<Map<String, Object>> maps) {
        List<Actor> actors = new ArrayList<>();

        for (Map<String, Object> map : maps) {
            Actor actor = new Actor();
            actor.setId((Integer) map.get("id"));
            actor.setName((String) map.get("name"));
            actor.setRating((Integer) map.get("rating"));
            actor.setMf((String) map.get("mf"));

            actors.add(actor);
        }

        return actors;
    }

    public static List<Purchase> addPurchaseFromMap(List<Map<String, Object>> maps) {
        List<Purchase> purchases = new ArrayList<>();
        for (Map<String, Object> map : maps) {
            Purchase purchase = new Purchase();

            purchase.setDateTime((Timestamp) map.get("datetime"));
            purchase.setId((Integer) map.get("id"));
            purchase.setReturndate((Date) map.get("returndate"));
            purchase.setMovieid((Integer) map.get("movieid"));

            purchases.add(purchase);
        }
        return purchases;
    }
}
