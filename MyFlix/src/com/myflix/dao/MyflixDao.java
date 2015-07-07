package com.myflix.dao;

import java.util.List;

import com.myflix.domain.Movie;
import com.myflix.domain.Users;


public interface MyflixDao {

    public List<Movie> getAllMovies();
    
    public List<Movie> getAllLatestMovies();
	
    public List<Movie> getGenericMovies(String language);
	
	public Movie getNewsById(Long mid);
	
    public void persistMovie(Movie movie);
    
    public List<Movie> getMovieByQuery(String query);

    public List<Movie> getMoviesForCarousel();
    
    public void addUsers(Users user);
}
