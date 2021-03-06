package control;

import java.io.IOException;
/*import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;*/
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.LinkedList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.CaratteristicaDAO;
import model.ImmagineDAO;
import model.InclusioneTag;
import model.InclusioneTagDAO;
import model.Item;
import model.ItemDAO;
import model.Mostra;
import model.MostraDAO;
import model.PossedereCaratteristica;
import model.PosserdereCaratteristicaDAO;
import model.PrintCaratteristica;
import model.TagDAO;

/**
 * Servlet implementation class mostraDettagli
 */
@WebServlet("/MostraDettagliItem")
public class MostraDettagliItem extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor.
	 */
	public MostraDettagliItem() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		ItemDAO iDao = new ItemDAO();
		MostraDAO mdao = new MostraDAO();
		ImmagineDAO imDao = new ImmagineDAO();
		InclusioneTagDAO itDao = new InclusioneTagDAO();
		PosserdereCaratteristicaDAO pcDao = new PosserdereCaratteristicaDAO();
		TagDAO tDao = new TagDAO();
		CaratteristicaDAO cDao = new CaratteristicaDAO();
		String itemID = request.getParameter("itemID");
		try {
			Item i = new Item();
			i = iDao.doRetrieveByKey(Integer.parseInt(itemID));
			LinkedList<Mostra> m = (LinkedList<Mostra>) mdao.doRetrieveAllByItem(Integer.parseInt(itemID));
			ArrayList<Integer> imgs = new ArrayList<>();
			for (Mostra mostra : m) {
				imgs.add(imDao.doRetrieveByKey(mostra.getImmagine()).getId());
			}
			LinkedList<InclusioneTag> it = (LinkedList<InclusioneTag>) itDao
					.doRetrieveAllByItem(Integer.parseInt(itemID));
			ArrayList<String> tag = new ArrayList<>();
			for (InclusioneTag inclusioneTag : it) {
				tag.add(tDao.doRetrieveByKey(inclusioneTag.getTag()).getNome());
			}
			LinkedList<PossedereCaratteristica> pc = (LinkedList<PossedereCaratteristica>) pcDao
					.doRetrieveAllByItem(Integer.parseInt(itemID));
			ArrayList<PrintCaratteristica> c = new ArrayList<>();
			for (PossedereCaratteristica possedereCaratteristica : pc) {
				PrintCaratteristica prc = new PrintCaratteristica();
				prc.setNome(cDao.doRetrieveByKey(possedereCaratteristica.getCaratteristica()).getNome());
				prc.setValore(possedereCaratteristica.getValore().split(","));
				c.add(prc);
			}
			request.setAttribute("item", i);
			request.setAttribute("galleriaItem", imgs);
			request.setAttribute("tag", tag);
			request.setAttribute("c", c);
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/itemDetailsPage.jsp");
			dispatcher.forward(request, response);
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}