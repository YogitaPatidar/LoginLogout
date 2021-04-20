
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author lenovo
 */
@WebServlet(urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out=response.getWriter();
       
        try{
           Class.forName("com.mysql.jdbc.Driver");
           Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/staffregistration","root","");
           Statement st=conn.createStatement();
           ResultSet res=st.executeQuery("select * from registration where Staff_ID='"+request.getParameter("Id")+"' and Password='"+request.getParameter("password")+"'");                                                                                           
           if(res.next()){
               HttpSession session=request.getSession();
               session.setAttribute("name", res.getString(2));
               response.sendRedirect("DashboardJSP.jsp?q=Login succesful...");           
              
           }
           else{
                   response.sendRedirect("LoginJSP.jsp?q=Incorrect Id or Password...");
           }
           res.close();
        }
        catch(ClassNotFoundException | SQLException | IOException ex){
            out.print(ex.getMessage().toString()); 
        }
    }
}
