package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Table.Student;

/**
 * Servlet implementation class CoreTagController
 */
@WebServlet("/CoreTagController")
public class CoreTagController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CoreTagController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processing(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processing(request, response);
	}

	private void processing(HttpServletRequest request, HttpServletResponse response) throws IOException {
		PrintWriter out = response.getWriter();
		String action = request.getParameter("action");
		try {
			if (action.equals("cout")) {
				request.getRequestDispatcher("views/coutTag.jsp").forward(request, response);
			} else if (action.equals("cset")) {
				request.getRequestDispatcher("views/csetTag.jsp").forward(request, response);
			} else if (action.equals("cremove")) {
				request.getRequestDispatcher("views/cremoveTag.jsp").forward(request, response);
			} else if (action.equals("ccatch")) {
				request.getRequestDispatcher("views/ccatchTag.jsp").forward(request, response);
			} else if (action.equals("cif")) {
				request.getRequestDispatcher("views/cifTag.jsp").forward(request, response);
			} else if (action.equals("cchoose")) {
				request.getRequestDispatcher("views/cchooseTag.jsp").forward(request, response);
			} else if (action.equals("cimport")) {
				request.getRequestDispatcher("views/cimportTag.jsp").forward(request, response);
			} else if (action.equals("cforEach")) {
				HttpSession session = request.getSession();
				List<Student> list = new ArrayList<Student>();
				for(int i = 0 ; i < 10; i++) {
					Student st = new Student();
					st.setId(i+1);
					st.setName("Student " + (i+1));
					list.add(st);
				}
				session.setAttribute("listStudents", list);
				request.getRequestDispatcher("views/cforEachTag.jsp").forward(request, response);
			} else if (action.equals("cforTokens")) {
				request.setAttribute("stringTokens", "Phong, van, tran. Phung; Nam");
				request.getRequestDispatcher("views/cforTokens.jsp").forward(request, response);
			} else if (action.equals("cparam")) {
				request.getRequestDispatcher("views/cparamTag.jsp").forward(request, response);
			} else if (action.equals("credirect")) {
				String redirect = request.getParameter("redirect");
				out.print(redirect);
				HttpSession session = request.getSession();
				session.setAttribute("redirect", redirect);
				request.getRequestDispatcher("views/credirectTag.jsp").forward(request, response);
			}
		} catch (Exception e) {
			out.print(e.toString());
		} finally {
			out.close();
		}
	}

}
