/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Dewmin
 */
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        //work on dopost method
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        //accept username and password from index.jsp file
        String email = request.getParameter("email");
        String password = request.getParameter("password"); 
        
        //database
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/phoenixair","root","");
            
            Statement stm = con.createStatement();
            ResultSet rs = stm.executeQuery("select * from user where email='"+email+"' and password='"+password+"' ");
            if(rs.next()){
                //if email and password true than go to home.jsp file
                response.sendRedirect("home.jsp");
            } 
            else{
                out.println("Incorrect email or password");
            }
            
