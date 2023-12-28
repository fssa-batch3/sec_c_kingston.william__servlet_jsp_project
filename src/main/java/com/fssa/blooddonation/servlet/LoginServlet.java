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

	@SuppressWarnings("unused")
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
	        throws ServletException, IOException {

	    // Get the email and password parameters from the request
	    String email = request.getParameter("email");
	    String password = request.getParameter("password");

	    // Log information about the email and password
	    Logger.info("email :" + email + "///" + " Password :" + password);

	    // Initialize a User object as null
	    User user = null;

	    // Create a UserService instance to handle user-related operations
	    UserService userService = new UserService(new UserValidator(), new UserDao());

	    // Initialize a RequestDispatcher
	    RequestDispatcher rd;

	    try {
	        // Attempt to log in the user using the provided email and password
	        user = userService.login(email, password);

	        // Print a message indicating that the user has successfully logged in
	        System.out.println("hello" + user.getEmail());

	        if (user != null) {
	            // If the user object is not null, create a session and set the current user attribute
	            HttpSession session = request.getSession();
	            session.setAttribute("currentuser", email);

	            // Log information about the user
	            Logger.info(user.toString());

	            // Set a success message attribute and forward the request to "index.jsp"
	            
	            request.setAttribute("successMsg", "Logged in successfully");
	            rd = request.getRequestDispatcher("index.jsp");
	            rd.forward(request, response);

	            // Log a success message
	            Logger.info("logged in successfully");
	        } else {
	            // If the user object is null, redirect to "./MyRequestServlet"
	            response.sendRedirect("./MyRequestServlet");
	        }

	    } catch (SQLException | ValidationException e) {
	        // Handle exceptions by printing the stack trace
	        e.printStackTrace();
	    }
	}
}