<%-- 
    Document   : GradeOne
    Created on : Oct 14, 2022, 10:20:52 PM
    Author     : Dewmin
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<!-- Boxicons -->
	<link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
	<!-- My CSS -->
		<link rel="stylesheet" href="gradeonecss/style.css">
		<link rel="stylesheet" href="gradeonecss/mainhomeprofile.css">
		<link rel="stylesheet" href="gradeonecss/GradeOne.css">

	<title>Staff - Grade One</title>
</head>
<body>


	<!-- SIDEBAR -->
	<section id="sidebar">
		<a href="#" class="brand">
			<i class='bx bxs-smile'></i>
			<span class="text">Phoenix Air</span>
		</a>
		<ul class="side-menu top">

			<li class="#" onclick="openCity(event, 'one')" id="defaultOpen">
				<a href="#">
					<i class='bx bxs-dashboard' ></i>
					<span class="text">Staff grade one Profile</span>
				</a>
			</li>

			<li>
				<a href="#" onclick="openCity(event, 'two')">
					<i class='bx bxs-shopping-bag-alt' ></i>
					<span class="text">Staff Details</span>
				</a>
			</li>

			<li>
				<a href="#" onclick="openCity(event, 'three')">
					<i class='bx bxs-doughnut-chart' ></i>
					<span class="text">Update User</span>
				</a>
			</li>

			<li>
				<a href="#" onclick="openCity(event, 'four')">
					<i class='bx bxs-message-dots' ></i>
					<span class="text">User Details</span>
				</a>
			</li>

			<li>
				<a href="#" onclick="openCity(event, 'five')">
					<i class='bx bxs-message-dots' ></i>
					<span class="text">Ticket Booking</span>
				</a>
			</li>

			<li>
				<a href="#" onclick="openCity(event, 'six')">
					<i class='bx bxs-message-dots' ></i>
					<span class="text">Ticket Booking Details</span>
				</a>
			</li>

		</ul>
		<ul class="side-menu">
			<li>
				<a href="#">
					<i class='bx bxs-cog' ></i>
					<span class="text">Settings</span>
				</a>
			</li>
			<li>
				<a href="#" class="logout">
					<i class='bx bxs-log-out-circle' ></i>
					<span class="text" href="indexlogin.jsp" >Logout</span>
				</a>
			</li>
		</ul>
	</section>
	<!-- SIDEBAR -->

	<!-- CONTENT -->
	<section id="content">
		<!-- NAVBAR -->
		<nav>
			<i class='bx bx-menu' ></i>
			<a href="#" class="nav-link">Categories</a>
			<form action="#">
				<div class="form-input">
					<input type="search" placeholder="Search...">
					<button type="submit" class="search-btn"><i class='bx bx-search' ></i></button>
				</div>
			</form>
			<input type="checkbox" id="switch-mode" hidden>
			<label for="switch-mode" class="switch-mode"></label>
			
		</nav>
		<!-- NAVBAR -->

		<!-- MAIN -->
		<main>
			<div class="head-title">
				<div class="left">
					<h1><font color="#fff">Staff - Grade One Dashboard</font></h1>
					<ul class="breadcrumb">
						<li>
							<a href="#">Dashboard</a>
						</li>
						<li><i class='bx bx-chevron-right' ></i></li>
						<li>
							<a class="active" href="#">Home</a>
						</li>
					</ul>
				</div>
			</div>

			<div id="one" class="tabcontent">
		       <h1>Staff G-One Profile</h1>

				<center>
					<div class="boxs">
					
					<input type="file" id="file" name="image" >
					<img src="img/flight_air.png" class="Profileimg" width="100%" height="100%">
					<label for="file">EDIT PIC</label>
					
					
					<input type="text" placeholder="GradeOne ID" name="" >
					<input type="text" placeholder="GradeOne Name" name="" >
					<input type="text" placeholder="First Name" name="" >
					<input type="text" placeholder="Last Name" name="" >
					<input type="Email" placeholder="Email ID" name="" >
					<input type="number" placeholder="Phone Number" name="" >
					<input type="date" placeholder="Date of Birth" name="">
					<input type="text" name="" placeholder="Gender">
					
					<button name="done" style="float: right;margin:10px 18.2% 0 0;">DONE</button>
					
					</div>
					
					</center></div>
		       </div>
		    </div>

		    <div id="two" class="tabcontent">
		       <h1>Staff Details</h1>
		       <div class="dashbox">

					<div class="outer-wrapper">
					<div class="table-wrapper">
					<table id="emp-table">
						<thead>
							<th col-index = 1>Staff ID</th>
				
							<th col-index = 2>Grade one/two</th>
				
							<th col-index = 3>Full Name</th>
				
							<th col-index = 4>DOB</th>
				
							<th col-index = 5>Nic number</th>
				
							<th col-index = 6>Gender</th>
				
							<th col-index = 7>DELETE</th>
				
							
						</thead>
                    <%   
                        
                            Connection con ;
                            PreparedStatement pst;
                            ResultSet rs;

                            Class.forName("com.mysql.jdbc.Driver");
                            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/phoenixair","root","");
                            
                            String query = "select * from staffpanel";
                            Statement stmt = con.createStatement();
                            
                            rs = stmt.executeQuery(query);
                            while(rs.next())
                            {
                                String id = rs.getString("id");
                            
                    %>
						<tbody>
							<td><%=rs.getString("id") %></td>
								<td><%=rs.getString("Grade") %></td>
								<td><%=rs.getString("fullname") %></td>
								<td><%=rs.getString("dob") %></td>
								<td><%=rs.getString("nic") %></td>
								<td><%=rs.getString("gender") %></td>
                                                        <td><a href="deleteadmindash2.jsp?id=<%=id%>">DELETE</a></td>
							
						</tbody>
                    <%          
                        }       
                    %>
					</table>
					<!-- <script>getUniqueValuesFromColumn()
					</script> -->
					<script>
						window.onload = () => 
						{
							console.log(document.querySelector("#emp-table > tbody > tr:nth-child(1) > td:nth-child(2) ").innerHTML);
						};
				
						getUniqueValuesFromColumn()
						
					</script>
				</div>
				</div> 
		       </div> 
		    </div>

		    <div id="three" class="tabcontent">
		       <h1>Update User</h1>
		       <div class="dashbox">
				<div class="about__data">
    

					<div class="ticketbooking">

						<div class="container">
<div class="content">
  <form action="#" method="POST">
        <div class="user-details" id="style-7">
            <%              
                    Connection con1;
                    PreparedStatement pst1;
                    ResultSet rs1;
                            
                    Class.forName("com.mysql.jdbc.Driver");
                    con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/phoenixair","root","");

                    String id = request.getParameter("id");

                    pst1 = con.prepareStatement("select * from bookingtwo where id = ?");
                    pst1.setString(1, id);
                    rs1 = pst1.executeQuery();

                    while(rs1.next())
                {

            %>
            <div class="input-box2">
                <span class="details">Full Name</span>
                <input type="text" placeholder="Enter your fullname" name="fullname" id="fullname" value="<%=rs.getString("fullname")%>"  required>
            </div>

            <div class="input-box2">
                <span class="details">Email</span>
                <input type="email" placeholder="Enter your email" name="email" id="email" value="<%=rs.getString("email")%>"  required>
            </div>

            <div class="input-box">
                <span class="details">FLYING FROM</span>
                <input type="text" placeholder="City Or Airport" name="flyingfrom" id="flyingfrom" value="<%=rs.getString("flyingfrom")%>"  required>
            </div>

            <div class="input-box">
                <span class="details">FLYING TO</span>
                <input type="text" placeholder="City Or Airport" name="flyingto" id="flyingto" value="<%=rs.getString("flyingto")%>"  required>
            </div>

            <div class="input-box">
                <span class="details">DEPARTING</span>
                <input type="date" placeholder="" name="departing" id="departing" value="<%=rs.getString("departing")%>"  required>
            </div>

            <div class="input-box">
                <span class="details">RETURNING</span>
                <input type="date" placeholder=""  name="returnflight" id="returnflight" value="<%=rs.getString("returnflight")%>"  required>
            </div>
        <%
            }
        %>
        </div>
         
        <button name="done" style="float: right;margin:10px 18.2% 0 0;">DONE</button>
          
      </form>
       
</div>
</div>

					</div>
				</div>
		       </div> 
		    </div>

		    <div id="four" class="tabcontent">
		       <h1>User Ticket Details</h1>
		       <div class="dashbox">

					<div class="outer-wrapper">
					<div class="table-wrapper">
					<table id="emp-table">
						<thead>
							<th col-index = 1>Full name</th>
								
							<th col-index = 2>Email</th>
				
							<th col-index = 3>Flying From</th>
				
							<th col-index = 4>Flying To</th>
				
							<th col-index = 5>Departing</th>
				
							<th col-index = 6>Returning</th>
				
							<th col-index = 7>DELETE</th>
				
							
						</thead>
                    <%   
                        
                            Connection con2 ;
                            PreparedStatement pst2;
                            ResultSet rs2;

                            Class.forName("com.mysql.jdbc.Driver");
                            con2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/phoenixair","root","");
                            
                            String query2 = "select * from bookingtwo";
                            Statement stmt2 = con2.createStatement();
                            
                            rs2 = stmt2.executeQuery(query2);
                            while(rs2.next())
                            {
                                String id2 = rs2.getString("id");
                            
                    %>
                            <tbody>
				<tr>
                                    <td><%=rs2.getString("fullname") %></td>
                                    <td><%=rs2.getString("email") %></td>
                                    <td><%=rs2.getString("flyingfrom") %></td>
                                    <td><%=rs2.getString("flyingto") %></td>
                                    <td><%=rs2.getString("departing") %></td>
                                    <td><%=rs2.getString("returnflight") %></td>
                                    <td><a href="deleteuserdash.jsp?id=<%=id%>">DELETE</a></td>
				</tr>
						
                            </tbody>
                    <%          
                        }       
                    %>
                            
					</table>
					<!-- <script>getUniqueValuesFromColumn()
					</script> -->
					<script>
						window.onload = () => 
						{
							console.log(document.querySelector("#emp-table > tbody > tr:nth-child(1) > td:nth-child(2) ").innerHTML);
						};
				
						getUniqueValuesFromColumn()
						
					</script>
				</div>
				</div> 
		       </div> 
		    </div>

		    <div id="five" class="tabcontent">
		       <h1>Ticket & Flight Booking</h1>
		       <div class="dashbox">
				<div class="about__data">
    

					<div class="ticketbooking">

						<div class="container">
<div class="content">
  <form action="#" method="POST">
        <div class="user-details" id="style-7">
            <%  
                                
                    Connection con3;
                    PreparedStatement pst3;
                    ResultSet rs3;
                            
                    Class.forName("com.mysql.jdbc.Driver");
                    con3 = DriverManager.getConnection("jdbc:mysql://localhost:3306/phoenixair","root","");

                    String id3 = request.getParameter("id");

                    pst3 = con3.prepareStatement("select * from ticketbook where id = ?");
                    pst3.setString(1, id);
                    rs3 = pst3.executeQuery();

                    while(rs3.next())
                {


            %>
            
            <div class="input-box2">
                <span class="details">Ticket ID</span>
                <input type="text" placeholder="Enter your fullname" name="id" id="id" value="<%=rs.getString("id")%>"  required>
            </div>

            <div class="input-box2">
                <span class="details">Flying From</span>
                <input type="email" placeholder="Enter your email" name="flyingfrom" id="flyingfrom" value="<%=rs.getString("flyingfrom")%>"  required>
            </div>

            <div class="input-box">
                <span class="details">Flying To</span>
                <input type="text" placeholder="City Or Airport" name="flyingto" id="flyingto" value="<%=rs.getString("flyingfrom")%>"  required>
            </div>

            <div class="input-box">
                <span class="details">Departing</span>
                <input type="date" placeholder="" name="departing" id="departing" value="<%=rs.getString("departing")%>"  required>
            </div>

            <div class="input-box">
                <span class="details">Returning</span>
                <input type="date" placeholder=""  name="returnflight" id="returnflight" value="<%=rs.getString("returning")%>"  required>
            </div>
            <%
                }
            %>
        </div>
         
        <button name="done" type="submit" name="submit" style="float: right;margin:10px 18.2% 0 0;">DONE</button>
          
      </form>
       
</div>
</div>


					</div>
				</div>
		       </div> 
		    </div>

		    <div id="six" class="tabcontent">
		       <h1>Ticket Booking Details</h1>
		       <div class="dashbox">

					<div class="outer-wrapper">
					<div class="table-wrapper">
					<table id="emp-table">
						<thead>
							<th col-index = 1>Ticket ID</th>
				
							<th col-index = 2>Flying From</th>
				
							<th col-index = 3>Flying To</th>
				
							<th col-index = 4>Departing</th>
				
							<th col-index = 5>Returning</th>
				
							<th col-index = 6>DELETE</th>
				
							
						</thead>
				<%   
                        
                            Connection con4 ;
                            PreparedStatement pst4;
                            ResultSet rs4;

                            Class.forName("com.mysql.jdbc.Driver");
                            con4 = DriverManager.getConnection("jdbc:mysql://localhost:3306/phoenixair","root","");
                            
                            String query4 = "select * from bookingtwo";
                            Statement stmt4 = con4.createStatement();
                            
                            rs4 = stmt4.executeQuery(query4);
                            while(rs4.next())
                            {
                                String id4 = rs4.getString("id");
                            
                    %>
						<tbody>
							<tr>
								<td><%=rs4.getString("id") %></td>
								<td><%=rs4.getString("flyingfrom") %></td>
								<td><%=rs4.getString("flyingto") %></td>
								<td><%=rs4.getString("departing") %></td>
								<td><%=rs4.getString("returnflight") %></td>
								<td><a href="deleteuserdash2.jsp?id=<%=id%>">DELETE</a></td>
							</tr>
				
						</tbody>
                    <%          
                        }       
                    %>
			
					</table>
					<!-- <script>getUniqueValuesFromColumn()
					</script> -->
					<script>
						window.onload = () => 
						{
							console.log(document.querySelector("#emp-table > tbody > tr:nth-child(1) > td:nth-child(2) ").innerHTML);
						};
				
						getUniqueValuesFromColumn()
						
					</script>
				</div>
				</div> 
		       </div> 
		    </div>
			
		</main>
		<!-- MAIN -->
	</section>
	<!-- CONTENT -->

	<script src="script.js"></script>

	<script>
    function openCity(evt, cityName) {
      var i, tabcontent, tablinks;
      tabcontent = document.getElementsByClassName("tabcontent");
      for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
      }
      tablinks = document.getElementsByClassName("tablinks");
      for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
      }
      document.getElementById(cityName).style.display = "block";
      evt.currentTarget.className += " active";
    }

    // Get the element with id="defaultOpen" and click on it
    document.getElementById("defaultOpen").click();


    // Load google charts
    google.charts.load('current', {'packages':['corechart']});
    google.charts.setOnLoadCallback(drawChart);

    // Draw the chart and set the chart values
    function drawChart() {
      var data = google.visualization.arrayToDataTable([
      ['Task', 'Hours per Day'],
      ['Work', 8],
      ['Eat', 2],
      ['TV', 4],
      ['Gym', 2],
      ['Sleep', 8]
    ]);

      // Optional; add a title and set the width and height of the chart
      var options = {'title':'My Average Day', 'width':550, 'height':400};

      // Display the chart inside the <div> element with id="piechart"
      var chart = new google.visualization.PieChart(document.getElementById('piechart'));
      chart.draw(data, options);
    }
</script>
</body>
</html>
