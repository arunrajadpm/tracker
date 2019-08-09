package com.g2t.tracker.model;

public class Task {
private String taskdetails;
private int id, userid,status,approve;
public String getTaskdetails() {
	return taskdetails;
}
public void setTaskdetails(String taskdetails) {
	this.taskdetails = taskdetails;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public int getUserid() {
	return userid;
}
public void setUserid(int userid) {
	this.userid = userid;
}
public int getStatus() {
	return status;
}
public void setStatus(int status) {
	this.status = status;
}
public int getApprove() {
	return approve;
}
public void setApprove(int approve) {
	this.approve = approve;
}

}
