package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.SearchDAO;
import com.model.SearchDTO;
@WebServlet("/SearchInput")
public class SearchInput extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");
		response.setCharacterEncoding("EUC-KR");
		String input = request.getParameter("input");
		SearchDAO dao = new SearchDAO();
		ArrayList<SearchDTO> spotlist = dao.search(input);
		request.setAttribute("spotlist", spotlist);
		RequestDispatcher dispatcher = request.getRequestDispatcher("searchMain.jsp");
		dispatcher.forward(request, response);
	}
}