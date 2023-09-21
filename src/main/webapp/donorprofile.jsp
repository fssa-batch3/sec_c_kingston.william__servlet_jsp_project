<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DONOR</title>
    <link rel="stylesheet" href="./assets/css/donorprofile.css" />
    <link rel="stylesheet" href="./assets/css/index.css" />
    
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="../assets/css/common.css">
  </head>
  <body>
    <!--navbar-->
	<jsp:include page="./header.jsp"></jsp:include>
   <div class="cont1">
        <div class="cont1_left">
            <img src="./assets/img/profile_image.jpg" alt="img">
        </div>
        <div class="cont1_right">  
          <h2><span class="orange">P</span>rofile</h2>
          <img src="./assets/img/logout_button.png"alt="img" id="logout_button" class="">
          <div class="details">
            <div class="detail">
              <p>Full name</p>
              <p id="full_name">---</p>
            </div>
            
            <div class="detail">
              <p>Email id</p>
              <p id="email_id">---</p>
            </div>
             <div class="detail">
              <p>Gender</p>
              <p id="gender">---</p>
            </div>
             <div class="detail">
              <p>Phone number</p>
              <p id="ph_no">---</p>
            </div>
           
            <div class="detail">
              <p>Blood group</p>
              <p id="blood_group">---</p>
            </div> 
             <div class="detail">
              <p>Address</p>
              <p id="address">---</p>
            </div>
            <div class="detail">
              <p>District</p>
              <p id="district">---</p>
            </div>
            <div class="detail">
              <p>State</p>
              <p id="state">---</p>
            </div> 
            <div class="detail">
              <p>Age</p>
              <p id="age">---</p>
            </div> 
            <div class="detail">
            <p><span class="red">In-Active</span>/<span class="green">Active</span></p>  <input type="checkbox" id="status" disabled>
            <label for="status">Toggle</label>
            </div>
          </div>
          <img src="./assets/img/save_button.png" alt="img" id="save_button" class="not_view">
          <img src="./assets/img/edit_button.jpg" alt="img" id="edit_button" class="view">
        </div>
    </div>
  </body>
  </html>
