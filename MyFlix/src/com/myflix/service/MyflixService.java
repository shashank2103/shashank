package com.myflix.service;

import java.util.List;

import com.myflix.domain.Movie;

public interface MyflixService {
	 public List<Movie> getAllMovies();
	 
	 public List<Movie> getAllLatestMovies();

	 public List<Movie> getGenericMovies(String language);
	 
	 public Movie getNewsById(Long mid);
	 
	 public void addMovie(Movie movie);
	 
	 public List<Movie> getMovieByQuery(String query);
	 
	 public List<Movie> getMoviesForCarousel();
}
