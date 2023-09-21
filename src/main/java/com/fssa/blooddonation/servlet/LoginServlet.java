package com.fssa.blooddonation.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.blooddonation.Dao.UserDao;
import com.fssa.blooddonation.exception.ValidationException;
import com.fssa.blooddonation.logger.Logger;
import com.fssa.blooddonation.model.User;
import com.fssa.blooddonation.service.UserService;
import com.fssa.blooddonation.validator.UserValidator;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String email = request.getParameter("email");
		String password = request.getParameter("password");

		Logger.info("email :" + email + "///" + " Password :" + password);
		User user = null;
		UserService userService = new UserService(new UserValidator(), new UserDao());
		RequestDispatcher rd;
		try {
			user = userService.login(email, password);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ValidationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		if (user != null) {
			HttpSession session = request.getSession();

			session.setAttribute("currentuser", user);

			Logger.info(user.toString());
			request.setAttribute("successMsg", "Logged in successfully");
			rd = request.getRequestDispatcher("./index.jsp");

			Logger.info("logged in successfully");

		} else {
			request.setAttribute("errorMsg","Incorrect username or password");
			rd = request.getRequestDispatcher("./login.jsp");

			Logger.info("User doesn't exist");
			

		}

		rd.forward(request, response);
	}

}
