package com.potatorental.repository;

import com.potatorental.model.Actor;

/**
 * User: Milky
 * Date: 5/7/13
 * Time: 9:29 AM
 */
public interface ActorDao {

    public void addActor(Actor actor);

    public void removeActor(Actor actor);
}
