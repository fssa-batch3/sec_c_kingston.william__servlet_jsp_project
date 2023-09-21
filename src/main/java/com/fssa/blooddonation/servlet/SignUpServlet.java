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
import com.fssa.blooddonation.enums.BloodGroup;
import com.fssa.blooddonation.enums.Gender;
import com.fssa.blooddonation.exception.ValidationException;
import com.fssa.blooddonation.model.User;
import com.fssa.blooddonation.service.UserService;
import com.fssa.blooddonation.validator.UserValidator;

/**
 * Servlet implementation class SignUpServlet
 */
@WebServlet("/SignUpServlet")
public class SignUpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		UserService userService = new UserService(new UserValidator(), new UserDao());
		User userDetails = new User();
		userDetails.setName(request.getParameter("name"));
		userDetails.setEmail(request.getParameter("email"));
		userDetails.setBloodGroup(BloodGroup.valueToEnumMapping(request.getParameter("blood_group")));
		userDetails.setPhoneNo(request.getParameter("phone"));
		userDetails.setGender(Gender.valueToEnumMapping(request.getParameter("gender")));
		userDetails.setPassWord(request.getParameter("password"));
		System.out.println(userDetails);

		request.getParameterNames();

		try {
			userService.addUser(userDetails);
			HttpSession session = request.getSession();
			session.setAttribute("User", userDetails);
			RequestDispatcher rd = request.getRequestDispatcher("./login.jsp");
			rd.forward(request, response);
		} catch (SQLException | ValidationException e) {

			RequestDispatcher rd = request.getRequestDispatcher("./signup.jsp");
			System.out.println(e.getMessage());
			rd.forward(request, response);
			e.printStackTrace();
		}

	}

}
