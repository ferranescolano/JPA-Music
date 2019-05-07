
package servlet;




import exception.MusicException;
import java.io.IOException;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import persistence.MusicEjb;

public class login extends HttpServlet{
    
    
      @EJB 
    MusicEjb ejb;
     
    
   protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, MusicException {
        String username = request.getParameter("usuario");
        String password = request.getParameter("pass");
        ejb.loginUser(username, password);
        request.getSession(true).setAttribute("usuario", username);
        response.sendRedirect(request.getContextPath() + "/userPage.jsp");
    }
}
