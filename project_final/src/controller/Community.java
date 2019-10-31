package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.CommunityDAO;
import com.model.CommunityDTO;
import com.model.ReviewDAO;
import com.model.ReviewDTO;

/**
 * Servlet implementation class Community
 */
@WebServlet("/Community")
public class Community extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");
		
		
		
		String free_title = request.getParameter("free_title");
		String free_contents = request.getParameter("free_contents");
		String email = request.getParameter("email");
		String free_pw = request.getParameter("free_pw");
		
		
		
		CommunityDTO dto = new CommunityDTO(free_title, free_contents, email, free_pw);
		CommunityDAO dao = new CommunityDAO();
		int cnt = dao.insrt_Community(dto);
		
		if (cnt > 0) {
			response.sendRedirect("Community_list.jsp");
		
	

	}
}

}
