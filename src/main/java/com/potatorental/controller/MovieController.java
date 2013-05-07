package com.potatorental.controller;

import com.potatorental.model.Movie;
import com.potatorental.repository.MovieDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * User: milky
 * Date: 5/6/13
 * Time: 8:04 PM
 */
@Controller
@RequestMapping("/movies")

public class MovieController {

    public MovieDao movieDao;

    @Autowired
    public MovieController(MovieDao movieDao) {
        this.movieDao = movieDao;
    }

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView getMovies(ModelMap modelMap) {
        modelMap.addAttribute("movies", movieDao.getAllMovies());
        return new ModelAndView("movies", modelMap);
    }
}
