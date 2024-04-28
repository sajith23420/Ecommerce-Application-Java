import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/Clothing"})
public class Clothing extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve form data
        String name = request.getParameter("name");
        String type = request.getParameter("type");
        double price = Double.parseDouble(request.getParameter("price"));
        
        // Save clothing item to database (assuming you have a ClothingDAO class)
        ClothingDAO clothingDAO = new ClothingDAO();
        clothingDAO.addClothing(name, type, price);
        
        // Redirect back to admin page
        response.sendRedirect("admin.jsp");
    }
}
