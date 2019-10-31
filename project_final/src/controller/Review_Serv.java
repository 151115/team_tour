package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.model.ReviewDAO;
import com.model.ReviewDTO;

@WebServlet("/Review_Serv")
public class Review_Serv extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");
		
		
		HttpSession session = request.getSession();
		
		String place_title = request.getParameter("place_title");
		String title = request.getParameter("title");
		String text = request.getParameter("text");
		String email = (String)session.getAttribute("email");
		

		ReviewDTO dto = new ReviewDTO(place_title, title, text, email);
		ReviewDAO dao = new ReviewDAO();
		int cnt = dao.insert_review(dto);

		if (cnt > 0) {
			response.sendRedirect("review.jsp");
		}

	}

}
