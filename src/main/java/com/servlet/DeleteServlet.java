package com.servlet;

import java.io.IOException;

import com.conn.DBConnect;
import com.dao.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/delete")
public class DeleteServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		int id = Integer.parseInt(req.getParameter("id"));

		StudentDAO dao = new StudentDAO(DBConnect.getConn());
		boolean f = dao.deleteStudent(id);

		HttpSession session = req.getSession();

		if (f) {
			session.setAttribute("succMsg", "Stusent details deleted successfully");
			resp.sendRedirect("index.jsp");
		} else {
			session.setAttribute("errorMsg", "Something wrong on server");
			resp.sendRedirect("index.jsp");
		}
	}

}
