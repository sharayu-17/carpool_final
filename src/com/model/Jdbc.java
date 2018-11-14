package com.model;

import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

import com.model.Login;
import com.model.Register;

public class Jdbc {
	Connection conn;
	int i;
	PreparedStatement ps;
	Statement st;
	ResultSet rs;
	public Connection myConnection() {
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","Newuser123");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();	
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn;
	}

	public int saveData(List<Register> lst) {

		int i=0;
		try
		{
			System.out.println("dbsave2");

			conn = myConnection();		
			ps=conn.prepareStatement("insert into Register values(?,?,?,?,?)" );	
			Register s=lst.get(0);
			ps.setString(1,s.getUname());
			ps.setString(2,s.getFname());
			ps.setString(3,s.getPassword());
			ps.setInt(4,s.getContact());
			ps.setString(5,s.getEmail());

			i=ps.executeUpdate();
		}


		catch (SQLException ex) {
			// TODO Auto-generated catch block
			ex.printStackTrace();
		}
		finally
		{
			try
			{
				conn.close();
			} 
			catch (SQLException e) 
			{
				e.printStackTrace();
			}
		}
		return i;

	}
	/*public String[] login()
	{
		String uname = null;
		String password=null;

		try {
			conn=myConnection();
			st=conn.createStatement();
			rs=st.executeQuery("Select uname, password from Register");
			while(rs.next())
			{
				uname=rs.getString(1);
				password=rs.getString(2);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		System.out.println("username "+uname);
		System.out.println("password "+password);
		return new String[] {uname,password};
	}*/

	
	public List<Register> getAllData()
	{
		List<Register> lst=new LinkedList<Register>();
		
		try
		{
			conn=myConnection();
			Statement s=
					conn.createStatement
					(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
			rs=s.executeQuery("select * from Register");
			while(rs.next())
			{
				Register a=new Register();
				a.setUname(rs.getString(1));
				a.setFname(rs.getString(2));
				a.setPassword(rs.getString(3));
				a.setContact(rs.getInt(4));
				a.setEmail(rs.getString(5));
				lst.add(a);
				System.out.println("cnt");
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return lst;
	}
	public boolean validateUser(Login l)
	{
		myConnection();
		List<Register> lst=getAllData();
		boolean b=false;
		for(Register r:lst)
		{
			if(r.getUname().equals(l.getUname()))
			{
				if(r.getPassword().equals(l.getPassword()))
				{
					b=true;
					break;
				}
			}
		}
		System.out.println("try1");
		return b;

	}

	public int updatePass(String pass, String email)
	{
		try
		{
			conn = myConnection();
			ps=conn.prepareStatement("update Register set password=? where email=?" );	

			ps.setString(1,pass);
			ps.setString(2,email);

			i=ps.executeUpdate();
			conn.close();

		} catch (SQLException ex) {
			// TODO Auto-generated catch block
			ex.printStackTrace();
		}
		return i;
	}

	public int saveRide(List<OfferRide> lst) {
		int i=0;
		try
		{
			System.out.println("dbsave2");

			conn = myConnection();		
			ps=conn.prepareStatement("insert into Details values(?,?,?,?,?)" );	
			OfferRide s=lst.get(0);
			ps.setString(1,s.getVregno());
			ps.setString(2,s.getUname());
			ps.setString(3,s.getColor());
			ps.setString(4,s.getModel());
			ps.setString(5,s.getLicense());

			i=ps.executeUpdate();
		}


		catch (SQLException ex) {
			// TODO Auto-generated catch block
			ex.printStackTrace();
		}
		finally
		{
			try
			{
				conn.close();
			} 
			catch (SQLException e) 
			{
				e.printStackTrace();
			}
		}
		return i;

	}

}