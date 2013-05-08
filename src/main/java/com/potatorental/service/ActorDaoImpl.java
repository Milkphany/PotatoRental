package com.potatorental.service;

import com.potatorental.model.Actor;
import com.potatorental.model.Movie;
import com.potatorental.repository.ActorDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import javax.sql.DataSource;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * User: Milky
 * Date: 5/7/13
 * Time: 9:30 AM
 */
public class ActorDaoImpl implements ActorDao{

    private JdbcTemplate jdbcTemplate;

    @Autowired
    public ActorDaoImpl(DataSource dataSource) {
        jdbcTemplate = new JdbcTemplate(dataSource);
    }

    @Override
    public void addActor(Actor actor, Movie movie) {
        String checkactor = "select * from actor where name = ?";
        try {
            actor = jdbcTemplate.queryForObject(checkactor, new BeanPropertyRowMapper<>(Actor.class), actor.getName());
        } catch (EmptyResultDataAccessException e) {

            String insert = "insert into actor (name, age, mf, rating) values (?, ?, ?, ?)";
            jdbcTemplate.update(insert, actor.getName(), actor.getAge(), actor.getMf(), actor.getRating());

            String getid = "select id from actor where name = ?";
            actor.setId(jdbcTemplate.queryForObject(getid, Integer.class, actor.getName()));

        }

        String appearin = "insert ignore into appearedin values (?, ?)";
        jdbcTemplate.update(appearin, actor.getId(), movie.getId());
    }

    @Override
    public void removeActor(Actor actor) {
        //To change body of implemented methods use File | Settings | File Templates.
    }

    @Override
    public List<Actor> getAllActors() {
        String sql = "select * from actor";
        return addActorsFromMap(jdbcTemplate.queryForList(sql));
    }

    @Override
    public List<Actor> getNumActors(int numActors) {
        String sql = "select * from actor limit ?";
        return addActorsFromMap(jdbcTemplate.queryForList(sql, numActors));
    }

    @Override
    public Actor getActorById(int actorid) {
        String sql = "select * from actor where id = ?";
        return jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<>(Actor.class), actorid);
    }

    @Override
    public void updateActor(Actor actor) {
        //To change body of implemented methods use File | Settings | File Templates.
    }

    private List<Actor> addActorsFromMap(List<Map<String, Object>> maps) {
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

}
