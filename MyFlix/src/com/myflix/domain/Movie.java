package com.myflix.domain;

import java.io.Serializable;
import java.sql.Date;

public class Movie implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Long mid;
	private String mname;
	private String mdirector;
	private Date releasedate;
	private String starring;
	private String plot;
	private String imageurl;
	private String videourl;
	private String genre;
	private Long runtime;
	private String language;
	public Long getMid() {
		return mid;
	}
	public void setMid(Long mid) {
		this.mid = mid;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getMdirector() {
		return mdirector;
	}
	public void setMdirector(String mdirector) {
		this.mdirector = mdirector;
	}
	public Date getReleasedate() {
		return releasedate;
	}
	public void setReleasedate(Date releasedate) {
		this.releasedate = releasedate;
	}
	public String getStarring() {
		return starring;
	}
	public void setStarring(String starring) {
		this.starring = starring;
	}
	public String getPlot() {
		return plot;
	}
	public void setPlot(String plot) {
		this.plot = plot;
	}
	public String getImageurl() {
		return imageurl;
	}
	public void setImageurl(String imageurl) {
		this.imageurl = imageurl;
	}
	public String getVideourl() {
		return videourl;
	}
	public void setVideourl(String videourl) {
		this.videourl = videourl;
	}
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	public Long getRuntime() {
		return runtime;
	}
	public void setRuntime(Long runtime) {
		this.runtime = runtime;
	}
	public String getLanguage() {
		return language;
	}
	public void setLanguage(String language) {
		this.language = language;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public Movie(Long mid, String mname, String mdirector, Date releasedate,
			String starring, String plot, String imageurl, String videourl,
			String genre, Long runtime, String language) {
		super();
		this.mid = mid;
		this.mname = mname;
		this.mdirector = mdirector;
		this.releasedate = releasedate;
		this.starring = starring;
		this.plot = plot;
		this.imageurl = imageurl;
		this.videourl = videourl;
		this.genre = genre;
		this.runtime = runtime;
		this.language = language;
	}
	public Movie() {
		super();
	}
	@Override
	public String toString() {
		return "Movie [mid=" + mid + ", mname=" + mname + ", mdirector="
				+ mdirector + ", releasedate=" + releasedate + ", starring="
				+ starring + ", plot=" + plot + ", imageurl=" + imageurl
				+ ", videourl=" + videourl + ", genre=" + genre + ", runtime="
				+ runtime + ", language=" + language + "]";
	}
	
	
	
	
}
