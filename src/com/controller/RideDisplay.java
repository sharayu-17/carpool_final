package com.controller;
import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.Jdbc;
import com.model.OfferRide;
import com.model.Register;

public class RideDisplay extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public RideDisplay() {
		super();
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("displayserv1");
		Jdbc db=new Jdbc();
		List<OfferRide> lst=db.getRideData();
		System.out.println("displayserv2");
		

		/*HttpSession session=request.getSession(true);
		session.setAttribute("data",lst);
		response.sendRedirect("DisplayAll.jsp");
		 */

		request.setAttribute("rideList",lst);
		RequestDispatcher view = request.getRequestDispatcher("Display.jsp");
		view.forward(request, response);	
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
