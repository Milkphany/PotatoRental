package com.potatorental.repository;

import com.potatorental.model.Actor;
import com.potatorental.model.Movie;

import java.util.List;

/**
 * User: Milky
 * Date: 5/7/13
 * Time: 9:29 AM
 */
public interface ActorDao {

    public void addActor(Actor actor, Movie movie);

    public void removeActor(Actor actor);

    public List<Actor> getAllActors();

    public List<Actor> getNumActors(int numActors);

    public Actor getActorById(int actorid);

    public void updateActor(Actor actor);
}
