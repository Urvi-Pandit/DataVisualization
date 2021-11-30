import java.io.*;
import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import jakarta.servlet.annotation.WebServlet;

import java.sql.*;
@WebServlet("/Login")

public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String username = request.getParameter("uname");
        String password = request.getParameter("psw");
        
			if(Validate.checkUser(username, password))
			{
				response.sendRedirect("HomePage.jsp");
			}
			else
			{
			   out.println("Username or Password incorrect");
			   RequestDispatcher rs = request.getRequestDispatcher("Start.jsp");
			   rs.include(request, response);
			}
    }  
}