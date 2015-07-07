package com.myflix.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.myflix.domain.Movie;
import com.myflix.domain.Users;
import com.myflix.service.MyflixService;


@Controller
public class MyflixController {

	@Autowired
	private MyflixService myflixService;
	
	
	@RequestMapping(value="/",method=RequestMethod.GET)
    public ModelAndView myflixLoginPage(){
		ModelAndView mav= new ModelAndView();
		mav.setViewName("login");
		mav.addObject("carouselMovies",myflixService.getMoviesForCarousel());
		return mav;
		
	}
	
	
	@RequestMapping(value="/",method=RequestMethod.POST)
    public ModelAndView myflixLoginValidate(@ModelAttribute("user") Users user){
		ModelAndView mav= new ModelAndView("home");
		mav.setViewName("login");
		
		return mav;
		
	}
	
	
	@RequestMapping(value="/home",method=RequestMethod.GET)
	public ModelAndView myflixHomePage(){
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("home");
		mav.addObject("movie", new Movie());
		mav.addObject("movies", myflixService.getAllMovies());
		mav.addObject("latestmovies", myflixService.getAllLatestMovies());
		
		return mav;
		
		
	}
	
	
	
	@RequestMapping(value="/genericHome",method=RequestMethod.GET)
	public ModelAndView myflixGenericHomePage(@RequestParam("language")String language){
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("genericHome");
		mav.addObject("movie", new Movie());
		mav.addObject("movies", myflixService.getGenericMovies(language));
		return mav;
		
		
	}
	
	
	
	@RequestMapping(value="/movieInfo",method=RequestMethod.GET)
	public ModelAndView myflixMovieInfoPage(@RequestParam("mid")Long mid){
		
		ModelAndView mav = new ModelAndView("movieInfo");
		mav.setViewName("movieInfo");
		Movie m = myflixService.getNewsById(mid);
		mav.addObject("movieInfo",m);
		
		return mav;
		
		
	}
	
	
	@RequestMapping(value="/addMovie",method=RequestMethod.GET)
	public ModelAndView getMyFlixAddDetailsPage(){
		ModelAndView mav= new ModelAndView("addMovie");
		mav.addObject("movie",new Movie() );
		List<String> language= new ArrayList<String>();
		language.add("hollywood");
		language.add("bollywood");
		language.add("tollywood");
		mav.addObject("language", language);
		
		return mav;
	}
	
	@RequestMapping(value="/addMovie",method=RequestMethod.POST)
	public ModelAndView getMyFlixAddDetailsWithDataPage(@ModelAttribute("movie") Movie movie){
		ModelAndView mav= new ModelAndView("/");
		myflixService.addMovie(movie);
		mav.addObject("movie",myflixService.getAllMovies() );
		
		
		
		return mav;
	}

	
	@RequestMapping(value="/search", method=RequestMethod.POST)
	public ModelAndView getSearchResults(@RequestParam("query")String query){
		System.out.println("balakrishna");
		ModelAndView mav = new ModelAndView("movieInfo");
		Movie m = myflixService.getMovieByQuery(query).get(0);
		System.out.println(m);
		mav.addObject("movieInfo", m);
		return mav;
	}

	
	
	
	
}
