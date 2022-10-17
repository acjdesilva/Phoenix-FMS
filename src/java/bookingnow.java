
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
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/bookingnow"})
public class bookingnow extends HttpServlet {
    
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
            String address = request.getParameter("address");
            String dob = request.getParameter("dob");
            String flyingfrom = request.getParameter("flyingfrom");
            String flyingto = request.getParameter("flyingto");
            String departing = request.getParameter("departing");
            String returning = request.getParameter("returning");
            
            pst = con.prepareStatement("insert into booking(fullname,email,address,dob,flyingfrom,flyingto,departing,returning)values(?,?,?,?,?,?,?,?)");
            pst.setString(1, fullname);
            pst.setString(2, email);
            pst.setString(3, address);
            pst.setString(4, dob);
            pst.setString(5, flyingfrom);
            pst.setString(6, flyingto);
            pst.setString(7, departing);
            pst.setString(8, returning);
            pst.executeUpdate();
            
            pst1 = con.prepareStatement("select max(id) from booking");
            rs = pst1.executeQuery();
            
            rs.next();
            
            int regno;
            
            regno = rs.getInt(1);
            
            out.println("Thank you for your Booking");
            out.println(regno+ "please check our dashboard ");
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(bookingnow.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(bookingnow.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
