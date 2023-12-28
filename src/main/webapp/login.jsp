<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="./assets/css/login.css" />
<title>Document</title>
</head>
<body>
    <div class="wrapper">
        <div class="title-text">
          <div class="title login">Login</div>
          <div class="title signup">Login</div>
        </div>
        <div class="form-container">
          <div class="slide-controls">
            <input type="radio" name="slide" id="login" checked>
            <input type="radio" name="slide" id="signup">
            <label for="login" class="slide login">Donor</label>
            <label for="signup" class="slide signup">Admin</label>
            <div class="slider-tab"></div>
          </div>
          <div class="form-inner">
            <!--  donor login============================ -->
            <form action="./LoginServlet" method="post" class="donor_login login">
              <div class="field">
                <input type="email" placeholder="Email Address" class="email" name="email" required id="email">
              </div>
              <div class="field">
                <input type="password" placeholder="Password" class="password" name="password" id="password" required>
              </div>
              <div class="pass-link">
<a href="#">Forgot password?</a>
</div>
              <div class="field btn">
                <div class="btn-layer"></div>
                <input type="submit" value="Login" id="submitbtn">
              </div>
              <div class="signup-link">
Not a Donor? <a href="./signup.jsp">Signup now</a>
</div>
            </form>

            <!-- hospital login----------------- -->

            <form action="#" class="hospital_login login">
              <div class="field">
                <input type="email" placeholder="Email Address" class="email" required>
              </div>
              <div class="field">
                <input type="password" placeholder="Password" class="password" required>
              </div>
              <div class="pass-link">
<a href="#">Forgot password?</a>
</div>
              <div class="field btn">
                <div class="btn-layer"></div>
                <input type="submit" value="Login">
              </div>
              <div class="signup-link">Not registered hospital? <a href="./hospital_registration.html">Signup now</a>
</div>
            </form>
          </div>
        </div>
      </div>
      
  <script src="./assets/js/signup.js"></script>
	<script src="./assets/js/notify.js"></script>
	<script>
<%
String errorMsg = (String) request.getAttribute("errorMsg");
String successMsg = (String) request.getAttribute("successMsg");
if (errorMsg != null) {%>
		console.log("<%=errorMsg%>");
		Notify.error("<%=errorMsg%>");
		setInterval(() => {
			window.location.href="./login.jsp";
		}, 3000);	<%
		
}
%>

	</script>
</body>
</html>