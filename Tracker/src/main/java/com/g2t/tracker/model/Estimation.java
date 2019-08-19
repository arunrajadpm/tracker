package com.g2t.tracker.model;

import java.util.Arrays;

public class Estimation {
 private String name,owner,ba,created_dt,expected,assignto,val_web,val_and,val_ios,val_tab,val_api,val_mac;
 private int status;
 public int getStatus() {
	return status;
}
public void setStatus(int status) {
	this.status = status;
}
private  byte[] dc1,dc2,dc3;
public byte[] getDc1() {
	return dc1;
}
public void setDc1(byte[] dc1) {
	this.dc1 = dc1;
}
public byte[] getDc2() {
	return dc2;
}
public void setDc2(byte[] dc2) {
	this.dc2 = dc2;
}
public byte[] getDc3() {
	return dc3;
}
public void setDc3(byte[] dc3) {
	this.dc3 = dc3;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getOwner() {
	return owner;
}
public void setOwner(String owner) {
	this.owner = owner;
}
public String getBa() {
	return ba;
}
public void setBa(String ba) {
	this.ba = ba;
}
public String getCreated_dt() {
	return created_dt;
}
public void setCreated_dt(String created_dt) {
	this.created_dt = created_dt;
}
public String getExpected() {
	return expected;
}
public void setExpected(String expected) {
	this.expected = expected;
}
public String getAssignto() {
	return assignto;
}
public void setAssignto(String assignto) {
	this.assignto = assignto;
}
public String getVal_web() {
	return val_web;
}
public void setVal_web(String val_web) {
	this.val_web = val_web;
}
public String getVal_and() {
	return val_and;
}
public void setVal_and(String val_and) {
	this.val_and = val_and;
}
public String getVal_ios() {
	return val_ios;
}
public void setVal_ios(String val_ios) {
	this.val_ios = val_ios;
}
public String getVal_tab() {
	return val_tab;
}
public void setVal_tab(String val_tab) {
	this.val_tab = val_tab;
}
public String getVal_api() {
	return val_api;
}
public void setVal_api(String val_api) {
	this.val_api = val_api;
}
@Override
public String toString() {
	return "Estimation [name=" + name + ", owner=" + owner + ", ba=" + ba + ", created_dt=" + created_dt + ", expected="
			+ expected + ", assignto=" + assignto + ", val_web=" + val_web + ", val_and=" + val_and + ", val_ios="
			+ val_ios + ", val_tab=" + val_tab + ", val_api=" + val_api + ", val_mac=" + val_mac + ", status=" + status
			+ ", dc1=" + Arrays.toString(dc1) + ", dc2=" + Arrays.toString(dc2) + ", dc3=" + Arrays.toString(dc3) + "]";
}
public String getVal_mac() {
	return val_mac;
}
public void setVal_mac(String val_mac) {
	this.val_mac = val_mac;
}
}
