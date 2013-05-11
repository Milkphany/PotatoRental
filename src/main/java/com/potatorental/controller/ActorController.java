package com.potatorental.controller;

import com.potatorental.model.Actor;
import com.potatorental.model.Movie;
import com.potatorental.repository.ActorDao;
import com.potatorental.repository.MovieDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

/**
 * User: Milky
 * Date: 5/8/13
 * Time: 2:11 AM
 */
@Controller
@RequestMapping("/actors")
public class ActorController {

    private final MovieDao movieDao;
    private final ActorDao actorDao;

    @Autowired
    public ActorController(MovieDao movieDao, ActorDao actorDao) {
        this.movieDao = movieDao;
        this.actorDao = actorDao;
    }

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView getActors() {
        return new ModelAndView("actors", "actors", actorDao.getAllActors());
    }

    @RequestMapping(value = "{actorid}", method = RequestMethod.GET)
    public ModelAndView getActor(@PathVariable int actorid, ModelMap modelMap) {
        Actor actor = actorDao.getActorById(actorid);
        List<Movie> movies = actorDao.getActorMovies(actor);

        modelMap.addAttribute(actor);
        modelMap.addAttribute("actormovies", movies);
        return new ModelAndView("actor", modelMap);
    }

    @ModelAttribute("addActor")
    public Actor getActor() {
        return new Actor();
    }

    @RequestMapping(value = "addActor", method = RequestMethod.GET)
    public String getAddActor() {
        return "actoraddform";
    }

    @RequestMapping(value = "addActor", method = RequestMethod.POST)
    public String postAddActor(@ModelAttribute Actor addActor, BindingResult bindingResult,
                               RedirectAttributes redirectAttributes, ModelMap modelMap) {
        if (bindingResult.hasErrors()) {
            redirectAttributes.addFlashAttribute("message", "Error with the form");
            return "redirect:/movies/addMovie";
        }

//        actorDao.insertActor(addActor, movieDao.getMovieByName());
        actorDao.insertActor(addActor);
        redirectAttributes.addFlashAttribute("messages", "You have successfully added a movie");

        return "redirect:/actors";
    }

   /* @RequestMapping(value = "insert", method = RequestMethod.GET)
    public String insertActors(ModelMap modelMap) {
        BufferedReader reader = null;
        List<Actor> actors = new ArrayList<>();

        try {
            reader = new BufferedReader(new FileReader("C:\\Users\\Milky\\IdeaProjects\\" +
                    "PotatoRental\\src\\main\\webapp\\resources\\datafiles\\actor127-250.txt"));

            Random ran = new Random();

            String line = null;
            while ((line = reader.readLine()) != null) {
                if (line.startsWith("('MOVIE")) {
                    String title = reader.readLine();
                    Movie movie = movieDao.getMovieByName(title);
                    while (!reader.readLine().equals("END")) {
                        while(!(line = reader.readLine()).equals("END")) {
                            String[] actorprop = line.split(":");
                            String actorName = actorprop[0];
                            Integer actorAge = Integer.parseInt(actorprop[1]);

                            Actor actor = new Actor();
                            actor.setName(actorName);
                            actor.setAge(actorAge);
                            actor.setMf(ran.nextFloat() > 0.7 ? "F" : "M");
                            actor.setRating(ran.nextInt(100) < 30 ? ran.nextInt(3) + 2 : ran.nextInt(2) + 4);

                            actorDao.insertActor(actor, movie);

                            actors.add(actor);
                        }
                    }
                }
            }

        } catch (IOException e) {
            System.err.println("File not found");
        }
        return "actors";
    }*/
}
