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
     * Handles the POST request for user sign-up.
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // Create a UserService instance to handle user-related operations
        UserService userService = new UserService(new UserValidator(), new UserDao());
        
        // Create a User instance to hold user details from the request
        User userDetails = new User();
        
        // Set user details from request parameters
        userDetails.setName(request.getParameter("name"));
        userDetails.setEmail(request.getParameter("email"));
        userDetails.setBloodGroup(BloodGroup.valueToEnumMapping(request.getParameter("blood_group")));
        userDetails.setPhoneNo(request.getParameter("phone"));
        userDetails.setGender(Gender.valueToEnumMapping(request.getParameter("gender")));
        userDetails.setPassWord(request.getParameter("password"));
        
        System.out.println(userDetails); // For debugging
        
        // Get parameter names (not used in the code)
        request.getParameterNames();

        try {
            // Attempt to add the user to the database
            userService.addUser(userDetails);
            
            // If successful, forward the user to the login page
            RequestDispatcher rd = request.getRequestDispatcher("./login.jsp");
            rd.forward(request, response);
        } catch (SQLException | ValidationException e) {
            // Handle exceptions by forwarding the user back to the signup page with an error message
            RequestDispatcher rd = request.getRequestDispatcher("./signup.jsp");
            System.out.println(e.getMessage()); // Print the error message (for debugging)
            rd.forward(request, response);
            e.printStackTrace(); // Print the stack trace (for debugging)
        }
    }
}
