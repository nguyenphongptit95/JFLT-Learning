package Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FormattingTagController
 */
@WebServlet("/FormattingTagController")
public class FormattingTagController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public FormattingTagController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		process(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		process(request, response);
	}

	private void process(HttpServletRequest request, HttpServletResponse response) throws IOException {
		PrintWriter out = response.getWriter();
		String action = request.getParameter("action");
		try {
			if(action.equals("formatNumber")) {
				request.getRequestDispatcher("views/fmtformatNumberTag.jsp").forward(request, response);
			} else if(action.equals("parseNumber")) {
				request.getRequestDispatcher("views/fmtparseNumberTag.jsp").forward(request, response);
			} else if(action.equals("formatDate")) {
				request.getRequestDispatcher("views/fmtformatDateTag.jsp").forward(request, response);
			} else if(action.equals("parseDate")) {
				request.getRequestDispatcher("views/fmtparseDateTag.jsp").forward(request, response);
			}
		} catch (Exception e) {
			out.print(e.toString());
		} finally {
			out.close();
		}
	}
}
