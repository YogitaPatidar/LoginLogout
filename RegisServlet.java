
import java.beans.Statement;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author lenovo
 */
@WebServlet(urlPatterns = {"/RegisServlet"})
public class RegisServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out=response.getWriter();
       try{
           Class.forName("com.mysql.jdbc.Driver");
           Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/staffregistration","root","");
           java.sql.Statement st = conn.createStatement();
           int x=st.executeUpdate("insert into registration(Staff_ID,Full_Name,Mobile_no,Password) values('"+request.getParameter("Id")+"','"+request.getParameter("fname")+"','"+request.getParameter("contactNo")+"','"+request.getParameter("password")+"')");
           if(x!=0){
               response.sendRedirect("SignUp.jsp?q=Registration succesful...");           
           }
           else{
               response.sendRedirect("SignUp.jsp?q=Registration not successful!!");
           }
           
       
       }
       catch(ClassNotFoundException | SQLException ex){
           out.print(ex.getMessage().toString());
       }
        
    }

}
