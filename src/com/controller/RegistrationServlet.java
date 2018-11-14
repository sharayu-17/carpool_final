package com.controller;

import java.io.IOException;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Jdbc;
import com.model.Register;

public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistrationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("Hello");
		String s1=request.getParameter("uname");
		String s2=request.getParameter("fname");
		String s3=request.getParameter("password");
		String s4=request.getParameter("contact");
		String s5=request.getParameter("email");
		System.out.println(s2);
		int contact=Integer.parseInt(s4);

		Register r=new Register();
		
		r.setUname(s1);;
		r.setFname(s2);
		r.setPassword(s3);
		r.setContact(contact);
		r.setEmail(s5);
			
		Jdbc jd=new Jdbc();
		List<Register> lst=new LinkedList<Register>();
		lst.add(r);
		System.out.println("test1");
		int i=jd.saveData(lst);
		System.out.println("test2 value is "+i);
		if(i>0)
		{
			System.out.println("test3");
			response.sendRedirect("Login.jsp");
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

