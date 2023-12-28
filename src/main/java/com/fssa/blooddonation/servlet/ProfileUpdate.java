package com.fssa.blooddonation.servlet;

import java.io.IOException;
import java.sql.SQLException;

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


@WebServlet("/ProfileUpdate")
public class ProfileUpdate extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    /**
     * Handles the GET request when updating a user's profile.
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // Create a User instance to hold updated profile information
        User user = new User();
        System.out.println("hello" + request.getParameter("phone"));
        
        // Set the user's profile attributes based on request parameters
        user.setName(request.getParameter("name"));
        user.setPhoneNo(request.getParameter("phonenumber"));
        user.setEmail(request.getParameter("email"));
        user.setBloodGroup(BloodGroup.valueOf(getParameter("bloodgroup")));
        user.setGender(Gender.valueOf(getParameter("gender")));
        
        try {
            // Create a UserService instance to handle user updates
            UserService userService = new UserService(new UserValidator(), new UserDao());
            
            // Update the user's profile
            userService.updateUser(user);
            
            // Set the updated user's email in the session
            HttpSession session = request.getSession();
            session.setAttribute("User", user.getEmail());
            
            System.out.println("Updated successfully!");
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        } catch (ValidationException e) {
            // Handle validation exceptions by printing the stack trace
            e.printStackTrace();
        }
        
        // Redirect the user to the "account.jsp" page
        response.sendRedirect("./account.jsp");
    }

    private String getParameter(String string) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
