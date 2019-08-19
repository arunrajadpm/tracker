package com.g2t.tracker.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.g2t.tracker.dao.EstimationDao;
import com.g2t.tracker.model.Estimation;

@Controller
public class EstimationController {
	@Autowired
	EstimationDao estimationDao;
	
	@RequestMapping(value="/estimation_request", method=RequestMethod.POST)
	public ModelAndView estimation_request(@RequestParam("project-name") String name,@RequestParam("project-owner") String owner,@RequestParam("project-ba") String ba,
			@RequestParam("estimation-date") String est_date,@RequestParam("project-document0") MultipartFile dc0,@RequestParam("project-document1") MultipartFile dc1,
			@RequestParam("project-document2") MultipartFile dc2,@RequestParam("WebView") String WebView,@RequestParam("Android") String Android,@RequestParam("iOS") String iOS,
			@RequestParam("Tablets") String Tablets,@RequestParam("API") String API,@RequestParam("MAC") String MAC,@RequestParam("expected-estimation") String expected_estimation,
			@RequestParam("asignto") String asignto) throws IOException {
		
		ModelAndView mv = new ModelAndView();
		Estimation estimation = new Estimation();
		String val_web = WebView;
		String val_and = WebView;
		String val_ios = WebView;
		String val_tab = WebView;
		String val_api = WebView;
		String val_mac = WebView;
		int status=0;
		estimation.setName(name);
		estimation.setOwner(owner);
		estimation.setBa(ba);
		estimation.setCreated_dt(est_date);
		byte[] dcu1 = dc0.getBytes();
		byte[] dcu2 = dc1.getBytes();
		byte[] dcu3 = dc2.getBytes();
		estimation.setDc1(dcu1);
		estimation.setDc2(dcu2);
		estimation.setDc3(dcu3);
		
		if(val_web.equals(WebView)) {
		estimation.setVal_web("1");
		}else {
			estimation.setVal_web("0");
		}
		if(val_and.equals(Android)) {
			estimation.setVal_web("1");
			}else {
				estimation.setVal_and("0");
			}
		if(val_ios.equals(iOS)) {
			estimation.setVal_ios("1");
			}else {
				estimation.setVal_ios("0");
			}
		if(val_tab.equals(Tablets)) {
			estimation.setVal_tab("1");
			}else {
				estimation.setVal_tab("0");
			}
		if(val_api.equals(API)) {
			estimation.setVal_api("1");
			}else {
				estimation.setVal_api("0");
			}
		if(val_mac.equals(MAC)) {
			estimation.setVal_mac("1");
			}else {
				estimation.setVal_mac("0");
			}
		
		estimation.setExpected(expected_estimation);
		
		estimation.setAssignto(asignto.trim());
		estimation.setStatus(status);
		int counter = estimationDao.addEstimation(estimation);

		return null;
	}

}
