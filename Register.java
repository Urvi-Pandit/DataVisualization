import java.io.*;
import java.sql.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/Register")

public class Register extends HttpServlet {
    
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
		System.out.println("in the servlet");
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
	
        String username = request.getParameter("uname");
        String password = request.getParameter("psw");
        String r_password = request.getParameter("psw-repeat");
        String name = request.getParameter("name");
        String contact = request.getParameter("contact");
        //long int contact = request.getAttribute("contact");
        if(!(password == r_password))
        {
        try {
        
            // loading drivers for mysql
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            //creating connection with the database 
            Connection con = DriverManager.getConnection
                        ("jdbc:mysql://localhost:3306/exampledb","root","demoLogin");

            PreparedStatement ps = con.prepareStatement
                        ("insert into login1 values(?,?,?,?)");

            ps.setString(1, username);
            ps.setString(2, password);
            ps.setString(3, name);
            ps.setString(4, contact);
            int i = ps.executeUpdate();
            
            if(i>0) {
            	response.sendRedirect("Start.jsp");
            }
            else out.println("Sorry!Not registered");
        
        }
        catch(Exception se) {
            se.printStackTrace();
        }
        } 
        else
        	out.println("Please check if you've enetered correct password");
	
    }
}