/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package deletedata;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Dewmin
 */
public class deleteadmindash extends HttpServlet {
    
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try {
                String id = request.getParameter("id");
                
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/phoenixair","root","");
                pst = con.prepareStatement("delete from bookingtwo where id = ?");
                
                pst.setString(1, id);
                pst.executeUpdate();
                

                if(rs.next()){
                //if email and password true than go to Admindash.jsp file
                out.println("***Record Deleted**"); 
                response.sendRedirect("Admindash.jsp");
                } 
                else{
                    out.println("Incorrect email or id");
                }
                
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(deleteuserdash.class.getName()).log(Level.SEVERE, null, ex);
            } catch (SQLException ex) {
                Logger.getLogger(deleteuserdash.class.getName()).log(Level.SEVERE, null, ex);
            }
        
    }


}
