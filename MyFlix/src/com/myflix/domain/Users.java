package com.myflix.domain;

public class Users {
private String firstname;
private String lastname;
private String userid;
private String password;
public String getFirstname() {
	return firstname;
}
public void setFirstname(String firstname) {
	this.firstname = firstname;
}
public String getLastname() {
	return lastname;
}
public void setLastname(String lastname) {
	this.lastname = lastname;
}
public String getUserid() {
	return userid;
}
public void setUserid(String userid) {
	this.userid = userid;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public Users(String firstname, String lastname, String userid, String password) {
	super();
	this.firstname = firstname;
	this.lastname = lastname;
	this.userid = userid;
	this.password = password;
}
public Users() {
	super();
}



}
