package com.myflix.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myflix.dao.MyflixDao;
import com.myflix.domain.Movie;

@Service
public class MyflixServiceImpl implements MyflixService {
	@Autowired
	private MyflixDao myflixDao;

	@Override
	public List<Movie> getAllMovies() {
		// TODO Auto-generated method stub
		System.out.println(myflixDao.getAllMovies());
		return myflixDao.getAllMovies();
	
	}

	@Override
	public Movie getNewsById(Long mid) {
		// TODO Auto-generated method stub
		return myflixDao.getNewsById(mid);
	}

	@Override
	public List<Movie> getGenericMovies(String language) {
		// TODO Auto-generated method stub
		return myflixDao.getGenericMovies(language);
	}

	@Override
	public List<Movie> getAllLatestMovies() {
		// TODO Auto-generated method stub
		return myflixDao.getAllLatestMovies();
	}

	@Override
	public void addMovie(Movie movie) {
		// TODO Auto-generated method stub
		myflixDao.persistMovie(movie);
	}

	@Override
	public List<Movie> getMovieByQuery(String query) {
		// TODO Auto-generated method stub
		return myflixDao.getMovieByQuery(query);
	}

	@Override
	public List<Movie> getMoviesForCarousel() {
		// TODO Auto-generated method stub
		return myflixDao.getMoviesForCarousel();
	}

}
