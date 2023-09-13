package com.fssa.blooddonation.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.blooddonation.Dao.DonorRegisterDao;
import com.fssa.blooddonation.enums.DonorBloodGroup;
import com.fssa.blooddonation.enums.DonorDistrict;
import com.fssa.blooddonation.enums.DonorGender;
import com.fssa.blooddonation.enums.DonorState;
import com.fssa.blooddonation.exception.ValidationException;
import com.fssa.blooddonation.model.DonorRegister;
import com.fssa.blooddonation.service.DonorRequestService;
import com.fssa.blooddonation.validator.DonorValidator;

/**
 * Servlet implementation class DonorRegister
 */
@WebServlet("/DonorRegister")
public class DonorRegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException {

	    // Create a PrintWriter to send responses to the client
	    PrintWriter out = response.getWriter();

	    // Create a new DonorRegister object to store donor information
	    DonorRegister donor = new DonorRegister();

	    // Print debug information to the server console


	    // Set donor information based on data received from the HTTP request
	    donor.setName(req.getParameter("name"));
	    donor.setMobileNo(req.getParameter("number"));
	    donor.setBloodtype(DonorBloodGroup.valueToEnumMapping(req.getParameter("blood_group")));
	    donor.setAddress(req.getParameter("address"));
	    donor.setState(DonorState.valueToEnumMapping(req.getParameter("state")));
	    donor.setDistrict(DonorDistrict.valueToEnumMapping(req.getParameter("district")));
	    donor.setAge(Integer.parseInt(req.getParameter("age")));
	    donor.setEmailId(req.getParameter("email"));
	    donor.setGender(DonorGender.valueToEnumMapping(req.getParameter("gender")));

	    // Create an instance of DonorRequestService, which handles donor registration
	    DonorRequestService donorRequestService = new DonorRequestService(new DonorValidator(), new DonorRegisterDao());

	    try {
	        // Attempt to create a new donor registration
	        donorRequestService.createDonorRegister(donor);
	        // Send a success message to the client
	        out.print("Donor Registration Successful");
	    } catch (ValidationException e) {
	        // If there is a validation error, print the error message and stack trace to the server console
	        System.out.println(e.getMessage());
	        e.printStackTrace();
	    }
	}

}
