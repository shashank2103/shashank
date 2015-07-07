package com.myflix.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.myflix.domain.Movie;
import com.myflix.domain.Users;

@Repository
public class MyflixDaoImpl implements MyflixDao{
	
	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Override
	public List<Movie> getAllMovies() {
		// TODO Auto-generated method stub
		return jdbcTemplate.query("select * from moviedetails order by Random() limit 9",new BeanPropertyRowMapper<Movie>(Movie.class));
	}

	@Override
	public Movie getNewsById(Long mid) {
		// TODO Auto-generated method stub
		return jdbcTemplate.queryForObject("select * from moviedetails where mid=?", new Object[]{mid}, new BeanPropertyRowMapper<Movie>(Movie.class));
		
	}

	@Override
	public List<Movie> getGenericMovies(String language) {
		// TODO Auto-generated method stub
		return jdbcTemplate.query("select * from moviedetails where language='"+language+"'", new BeanPropertyRowMapper<Movie>(Movie.class) );
	}

	@Override
	public List<Movie> getAllLatestMovies() {
		// TODO Auto-generated method stub
		return jdbcTemplate.query("select * from moviedetails where releasedate between '20150601' and '20150706'",new BeanPropertyRowMapper<Movie>(Movie.class));

	}

	@Override
	public void persistMovie(Movie movie) {
		// TODO Auto-generated method stub
		
		movie.setMid(System.currentTimeMillis());
		String insertSQL = "INSERT INTO moviedetails(mname, mdirector,releasedate,starring,plot,imageurl,videourl,genre,runtime,language)"+"values(?,?,?,?,?,?,?,?,?,?);";
				
				jdbcTemplate.update(insertSQL,new Object[] {movie.getMname(),movie.getMdirector(),movie.getReleasedate(),movie.getStarring(),movie.getPlot(),movie.getImageurl(),movie.getVideourl(),movie.getGenre(),movie.getRuntime(),movie.getLanguage()});

		
	}

	@Override
	public List<Movie> getMovieByQuery(String query) {
		// TODO Auto-generated method stub
		String q = "select * from moviedetails where upper(mname) Like upper('%"+query+"%')";
		System.out.println(q);
		System.out.println(jdbcTemplate.query(q,new BeanPropertyRowMapper<Movie>(Movie.class)));
		return  jdbcTemplate.query(q,new BeanPropertyRowMapper<Movie>(Movie.class));
	}

	@Override
	public List<Movie> getMoviesForCarousel() {
		// TODO Auto-generated method stub
	    String query="select * from moviedetails order by Random() limit 4";
		return jdbcTemplate.query(query,new BeanPropertyRowMapper<Movie>(Movie.class)) ;

	}

	
}
