package com.fssa.blooddonation.servlet;

import java.io.IOException;
import java.io.PrintWriter;
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

import com.fssa.blooddonation.Dao.BloodRequestDao;
import com.fssa.blooddonation.enums.BloodGroup;
import com.fssa.blooddonation.enums.RequestStatus;
import com.fssa.blooddonation.exception.ValidationException;
import com.fssa.blooddonation.model.BloodRequest;
import com.fssa.blooddonation.service.RequestService;
import com.fssa.blooddonation.validator.BloodReqValidator;

/**
 * Servlet implementation class BloodRequestServlet
 */
@WebServlet("/BloodRequestServlet")
public class BloodRequestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		RequestService service = new RequestService(new BloodReqValidator(), new BloodRequestDao());

		PrintWriter out = response.getWriter();

		List<BloodRequest> requestList = service.getAllBloodRequest();

//		for (BloodRequest ele : requestList) {
//
//			out.println(ele);
//
//		}
		request.setAttribute("requestList", requestList);

		RequestDispatcher dispatcher = request.getRequestDispatcher("/ListBlood.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Date date = new Date();


			BloodRequest req= new BloodRequest();
			req.setName(request.getParameter("name"));
			req.setBloodtype(BloodGroup.valueToEnumMapping(request.getParameter("bloodtype")) );
			req.setContactNo(request.getParameter("contactno"));
			req.setDescription(request.getParameter("description"));
			req.setQuantity(Integer.parseInt(request.getParameter("quantity")));
			req.setReqDate(LocalDate.now());
			req.setVerification(false);
			req.setStatus(RequestStatus.CLOSED);
			
			RequestService requestService=new RequestService(new BloodReqValidator() ,new BloodRequestDao() );
			
			try {
				requestService.createBloodReq(req);
				System.out.println("Created Successfully");
			} catch (ValidationException e) {
				System.out.println("Not Created");
				e.printStackTrace();
			}	
	}

}
