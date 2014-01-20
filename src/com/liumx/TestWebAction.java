package com.liumx;

import java.io.IOError;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "testWeb",urlPatterns = {"/index.jsp"})
public class TestWebAction extends HttpServlet{

	/**
	 * 
	 */
	String name="000"; 
	private static final long serialVersionUID = 1L;
	public void service(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException{
		//name= req.getParameter("content");
		req.setAttribute("name", name);
		RequestDispatcher rDispatcher = null;
		//System.out.print(name);
		rDispatcher= req.getRequestDispatcher("/jsp/MyJsp.jsp");
		rDispatcher.forward(req, response);
	}
}
