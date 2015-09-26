package Servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Login.*;
import DbDriver.*;

@WebServlet("/Contriller")
public class Contriller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Contriller() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		AnswerRequast(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		AnswerRequast(request, response);
	}
	private void AnswerRequast(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		String Button = request.getParameter("Submit");
		if(Button.equals("Login")){
			
			response.setContentType("text/html; charset=utf-8"); 
			ServletContext sc = getServletContext(); 
			RequestDispatcher rd = null; 
			rd = sc.getRequestDispatcher("/HTML/Login/Login.html");
			rd.forward(request, response); 
		}else if(Button.equals("Register")){
			response.setContentType("text/html; charset=utf-8"); 
			ServletContext sc = getServletContext(); 
			RequestDispatcher rd = null; 
			rd = sc.getRequestDispatcher("/HTML/Control/AddLogin.html");
			rd.forward(request, response); 
	}
	}
}
