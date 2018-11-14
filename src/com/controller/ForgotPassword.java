package com.controller;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Jdbc;

public class ForgotPassword  extends HttpServlet {
		private static final long serialVersionUID = 1L;
	       Connection conn;
	    /**
	     * @see HttpServlet#HttpServlet()
	     */
	    public ForgotPassword() {
	        super();
	        // TODO Auto-generated constructor stub
	    }

		/**
		 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
		 */
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// TODO Auto-generated method stub
			response.getWriter().append("Served at: ").append(request.getContextPath());
			
			
		}

		/**
		 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
		 */
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// TODO Auto-generated method stub
			String email=request.getParameter("email");
			String pass=request.getParameter("password");
			Jdbc jd=new Jdbc();
			int i=jd.updatePass(pass, email);
			if(i>0)
			{
				System.out.println(i+ " Updated...");
				response.sendRedirect("Login.jsp");
			}
			else
			{
				response.sendError(i, "Invalid password");
			}
			
		}

	}
