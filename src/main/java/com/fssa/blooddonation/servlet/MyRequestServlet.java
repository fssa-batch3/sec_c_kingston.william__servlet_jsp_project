package com.fssa.blooddonation.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.blooddonation.Dao.UserDao;
import com.fssa.blooddonation.exception.ValidationException;
import com.fssa.blooddonation.model.BloodRequest;
import com.fssa.blooddonation.service.RequestService;

/**
 * Servlet implementation class MyRequestServlet
 */
@WebServlet("/MyRequestServlet")
public class MyRequestServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Get the current session, if it exists
        HttpSession session = request.getSession(false);

        // Get the email of the currently logged-in user from the session
        String email = (String) session.getAttribute("currentuser");

        // Create an instance of RequestService
        RequestService reqService = new RequestService();

        try {
            // Retrieve all the blood requests associated with the user's email as an ArrayList
            ArrayList<BloodRequest> bloodReqDetails = reqService.getBloodReqByEmail(email);

            // Print the retrieved blood request details (for debugging)
            System.out.println(bloodReqDetails);
            System.out.println("Getting request details successfully");

            // Set the retrieved blood request details as an attribute in the request
            request.setAttribute("bloodReqDetails", bloodReqDetails);

        } catch (ValidationException e) {
            // Handle validation exceptions by printing the stack trace and error message
            e.printStackTrace();
            System.out.println(e.getMessage());
        }

        // Forward the request to the "requestblood.jsp" page to display the blood request details
        RequestDispatcher rd = request.getRequestDispatcher("./requestblood.jsp");
        rd.forward(request, response);
    }
}
