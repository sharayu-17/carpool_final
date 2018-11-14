package com.controller;
import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.Jdbc;
import com.model.Register;

public class DisplayServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public DisplayServlet() {
		super();
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("displayserv1");
		Jdbc db=new Jdbc();
		List<Register> lst=db.getAllData();
		System.out.println("displayserv2");
		

		/*HttpSession session=request.getSession(true);
		session.setAttribute("data",lst);
		response.sendRedirect("DisplayAll.jsp");
		 */

		request.setAttribute("memberList",lst);
		RequestDispatcher view = request.getRequestDispatcher("List.jsp");
		view.forward(request, response);		

	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
