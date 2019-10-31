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

@WebServlet("/SpotFilter")
public class SpotFilter extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String[] checks = request.getParameterValues("check");
		String button = request.getParameter("allsearch");
		SearchDAO dao = new SearchDAO();
		if(button!= null) {
			ArrayList<SearchDTO> spotlist = dao.all();
			request.setAttribute("spotlist", spotlist);
		}else if(checks != null) {
			ArrayList<SearchDTO> spotlist = dao.filter(checks);
			request.setAttribute("spotlist", spotlist);
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher("searchMain.jsp");
		dispatcher.forward(request, response);
	}
}
