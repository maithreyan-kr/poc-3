package com.adminlogin;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class loginAdmin
 */
@WebServlet("/adminlog")
public class loginAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginAdmin() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname = request.getParameter("admin id");
		String pass = request.getParameter("password");
		
		adminLoginDao dao = new adminLoginDao();
		
//		if(uname.equals("d.keerthi")&&pass.equals("bahu1997")) {
//		HttpSession session = request.getSession();
//		session.setAttribute("username", uname);
//		response.sendRedirect("hello.jsp");
//		}
//		else {
//		response.sendRedirect("adminlogin.jsp");
//		}
//
//
//
//		doGet(request, response);
//
//}
		try {
			if(dao.check(uname, pass)) {
				HttpSession ses = request.getSession();
				ses.setAttribute("admin id", uname);
				ses.setAttribute("password", pass);
				
				response.sendRedirect("hello.jsp");
			}
			else {
				response.sendRedirect("login.jsp");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	
	}

}
