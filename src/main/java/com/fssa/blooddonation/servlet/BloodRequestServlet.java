package com.fssa.blooddonation.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.blooddonation.Dao.BloodRequestDao;
import com.fssa.blooddonation.Dao.UserDao;
import com.fssa.blooddonation.enums.BloodGroup;
import com.fssa.blooddonation.enums.RequestStatus;
import com.fssa.blooddonation.exception.ValidationException;
import com.fssa.blooddonation.model.BloodRequest;
import com.fssa.blooddonation.service.RequestService;
import com.fssa.blooddonation.validator.BloodReqValidator;

@WebServlet("/BloodRequestServlet")
public class BloodRequestServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Handling GET requests
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // Creating an instance of BloodReqService, which handles blood requests
        RequestService service = new RequestService(new BloodReqValidator(), new BloodRequestDao());

        // Creating a PrintWriter to write responses
        PrintWriter out = response.getWriter();

        // Getting a list of all blood requests
        List<BloodRequest> requestList = service.getAllBloodRequest();

        // Uncommented loop to print each blood request
        /*
        for (BloodRequest ele : requestList) {
            out.println(ele);
        }
        */

        // Setting the request attribute "requestList" with the list of blood requests
        request.setAttribute("requestList", requestList);

        // Getting a RequestDispatcher to forward the request to ListBlood.jsp
        RequestDispatcher dispatcher = request.getRequestDispatcher("/ListBlood.jsp");
        dispatcher.forward(request, response);
    }

    // Handling POST requests
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Creating a date format and getting the current date
        DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
        Date date = new Date();

        // Creating a PrintWriter to write responses
        PrintWriter Out = response.getWriter();
        
        // Creating a new BloodRequest instance
        BloodRequest req = new BloodRequest();
        
        // Getting the current session
        HttpSession session = request.getSession(false);

        // Getting the email of the current user from the session
        String email = (String) session.getAttribute("currentuser");

        // Setting various properties of the BloodRequest object from request parameters
        req.setName(request.getParameter("name"));
        req.setBloodtype(BloodGroup.valueToEnumMapping(request.getParameter("bloodtype")));
        req.setContactNo(request.getParameter("contactno"));
        req.setDescription(request.getParameter("description"));
        req.setQuantity(Integer.parseInt(request.getParameter("quantity")));
        req.setReqDate(LocalDate.now());
        req.setVerification(false);
        req.setStatus(RequestStatus.CLOSED);

        // Creating a RequestService to handle blood request operations
        RequestService requestService = new RequestService(new BloodReqValidator(), new BloodRequestDao());

        try {
            // Getting the user ID by email
            int id = UserDao.getUserIdByEmail(email);
            req.setUserId(id);
            
            // Creating the blood request
            requestService.createBloodReq(req);
            System.out.println("Created Successfully");
            Out.print("Request Successfully Submitted");
            
            // Redirecting the response to MyRequestServlet
            response.sendRedirect("./MyRequestServlet");
        } catch (ValidationException | SQLException e) {
            System.out.println("Not Created");
            e.printStackTrace();
        }
    }
}
