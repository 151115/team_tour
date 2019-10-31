package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.Member_DAO;
import com.model.Member_DTO;

@WebServlet("/Member_join")
public class Member_join extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");

		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		
		Member_DAO dao = new Member_DAO();
		Member_DTO dto = new Member_DTO(email, pw ,name);
		

		int cnt = dao.join(dto);

		if (cnt > 0 ) {
			HttpSession session = request.getSession();
			session.setAttribute("email", email);
			response.sendRedirect("index.jsp");

		} else {
			response.sendRedirect("join.jsp");
		}
	}

}
