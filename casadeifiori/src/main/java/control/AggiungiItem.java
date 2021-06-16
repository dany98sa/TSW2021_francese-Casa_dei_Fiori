package control;

import java.io.IOException;
import java.io.InputStream;
/*import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;*/
import java.sql.SQLException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;
import model.Carrello;
import model.Immagine;
import model.ImmagineDAO;
import model.Item;
import model.ItemDAO;
import model.Mostra;
import model.MostraDAO;
import model.TipoItem;
import model.User;

/**
 * Servlet implementation class AggiungiItem
 */
@WebServlet("/AggiungiItem")
public class AggiungiItem extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public AggiungiItem() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession sessione = request.getSession(true);
		ItemDAO itemDAO= new ItemDAO();
		int x=0;
		try {
			x = itemDAO.doGetMaxItemId()+1;
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		Item item = new Item(x,
				Integer.parseInt(request.getParameter("iva")),
				Double.parseDouble(request.getParameter("price")),
				request.getParameter("description"),
				request.getParameter("name"),
				TipoItem.valueOf(request.getParameter("tipo")),
				Integer.parseInt(request.getParameter("sconto")),
				Integer.parseInt(request.getParameter("quantity")));
		
		synchronized (sessione) {
			sessione.setAttribute("idItem", x);
		}
	
		try {
			itemDAO.doSave(item);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace(response.getWriter());
		}
	}
}
