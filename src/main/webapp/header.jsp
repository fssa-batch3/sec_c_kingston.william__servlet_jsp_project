<header>
	<nav>
		<div class="nav1">
			<img src="assets/img/Donor_logo.png" alt="logo">
			<ul class="nav-links">
				<li class="active"><a href="./index.jsp">Home</a></li>

				<%
				String sessionuser = (String) request.getSession(false).getAttribute("currentuser");

				if (sessionuser == null) {
				%>


				<li><a href="./login.jsp">Donate Blood</a></li>

				<li><a href="./login.jsp">Request Blood</a></li>
				
				<%
				} else {
				%>

				<li><a href="./donateblood.jsp">Donate Blood</a></li>

				<li><a href="./bloodrequest.jsp">Request Blood</a></li>
				<li id="yourrequest"><a href="./MyRequestServlet">Your request</a></li>


				<%
				}
				%>


				<%
				String email = (String) request.getSession(false).getAttribute("currentuser");
				String password = "King@123"; // Make sure to use the correct session attribute name for the password
				System.out.println(email + password);
				if (email != null && password != null && email.equals("Kingstonbloodbank@gmail.com") && password.equals("King@123")) {
				%>
				<li id="register1"><a href="allbloodrequests.jsp">All
						BloodReq</a></li>
				<li id="register1"><a href="alldonordetails.jsp">All
						DonorReq</a></li>
				<%
				} else {
				%>
				<script>
					document.getElementById("register1").style.display = "none";
				</script>
				<%
				}
				%>




				<li id="register"><a href="donorprofile.jsp">Profile</a></li>
		</div>
		<div id="login_signup" class="login_signup">
			<!-- <a href="pages/registrationTwo.html"><button>Signup</button></a> -->
			<a href="./login.jsp">
				<button>Login</button>
			</a>
		</div>
		<%
		if (email != null) {
		%>
		<script>
			document.getElementById("login_signup").style.display = "none";
			document.getElementById("register").style.display = "block";
			document.getElementById("yourrequest").style.display="block";
		</script>

		<%
		} else {
		%>
		<script>
			document.getElementById("login_signup").style.display = "block";
			document.getElementById("register").style.display = "none";
			document.getElementById("yourrequest").style.display="none";
		</script>
		<%
		}
		%>

	</nav>
</header>