import java.io.IOException;
import java.io.PrintWriter;
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


public class Bookingticket extends HttpServlet {

    Connection con;
    PreparedStatement pst;
    PreparedStatement pst1;
    ResultSet rs;
   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try {
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/phoenixair","root","");
            
            String fullname = request.getParameter("fullname");
            String email = request.getParameter("email");
            String flyingfrom = request.getParameter("flyingfrom");
            String flyingto = request.getParameter("flyingto");
            String departing = request.getParameter("departing");
            String returnflight = request.getParameter("returnflight");
            
            pst = con.prepareStatement("insert into bookingtwo(fullname,email,flyingfrom,flyingto,departing,returnflight)values(?,?,?,?,?,?)");
            pst.setString(1, fullname);
            pst.setString(2, email);
            pst.setString(3, flyingfrom);
            pst.setString(4, flyingto);
            pst.setString(5, departing);
            pst.setString(6, returnflight);
            pst.executeUpdate();
            
            response.sendRedirect("home.jsp");
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Bookingticket.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Bookingticket.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }


}
