package com.controller;

import java.io.IOException;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.Jdbc;
import com.model.OfferRide;
import com.model.Register;

public class OfferRideServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OfferRideServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("Hello");
		String s1=request.getParameter("vregno");
		String s2=request.getParameter("uname");
		String s3=request.getParameter("color");
		String s4=request.getParameter("model");
		String s5=request.getParameter("license");
		String s6=request.getParameter("source");
		String s7=request.getParameter("destination");
		String s8=request.getParameter("seats");
		
		System.out.println(s2);
		
		int a=Integer.parseInt(s8);

		OfferRide r=new OfferRide();
		
		r.setVregno(s1);
		r.setUname(s2);
		r.setColor(s3);
		r.setModel(s4);
		r.setLicense(s5);
		r.setSource(s6);
		r.setDestination(s7);
		r.setSeats(a);
			
		Jdbc jd=new Jdbc();
		List<OfferRide> lst=new LinkedList<OfferRide>();
		lst.add(r);
		System.out.println("test1");
		
		int i=jd.saveRide(lst);
		System.out.println("test2 value is "+i);
		if(i>0)
		{
			System.out.println("test3");
			RequestDispatcher view = request.getRequestDispatcher("/RideDisplay");
			view.forward(request, response);
		}
		System.out.println("test4");
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}
}

