<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<!DOCTYPE html>
<!-- Website template by freewebsitetemplates.com -->
<html>
<head>
	<meta charset="UTF-8">
	<title>Confirm Order</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
	<div id="page">
		<div>
			<div id="header">
				<a href="index.html"><img src="images/logo.png" alt="Image"></a>
				<ul>
					<li>
						<a href="index.jsp">Home</a>
					</li>
					<li>
						<a href="menu.jsp">Menu</a>
					</li>
					<li class="current">
						<a href="locations.jsp">Locations</a>
					</li>
					<li>
						<a href="blog.html">Blog</a>
					</li>
					<li>
						<a href="about.html">About Us</a>
					</li>
				</ul>
			</div>
			<div id="body">
				<div id="figure">
					<img src="images/headline-locations.jpg" alt="Image">
				</div>
				<div>
					<a href="locations.html" class="locations">Locations</a>
					<div>
						
						<%
						out.println("<h1>You ordered:</h1>");
						String[] options =request.getParameterValues("options");
						//if array options not null run enhanced for loop
						if (options != null)
						for (String op:options){
							out.println("<h3>" + op + "</h3>");
						}
						int optionsAmount = Integer.valueOf(options.length);
						int total = 7 * optionsAmount;
						out.println("<h1>Total: </h1>" + "&#36;" + total);
						
						
						
						%>
						
				</div>
			</div>
			<div id="footer">
				<div>
					<a href="index.html"><img src="images/logo2.png" alt="Image"></a>
					<p class="footnote">
						&copy; Yay&#33;Koffee 2011.<br>All Rights Reserved.
					</p>
				</div>
				<div class="section">
					<ul>
						<li>
							<a href="index.html">Home</a>
						</li>
						<li>
							<a href="menu.html">Menu</a>
						</li>
						<li class="current">
							<a href="locations.html">Locations</a>
						</li>
						<li>
							<a href="blog.html">Blog</a>
						</li>
						<li>
							<a href="about.html">About Us</a>
						</li>
					</ul>
					<div id="connect">
						<a href="http://freewebsitetemplates.com/go/facebook/" target="_blank" id="facebook">Facebook</a>
						<a href="http://freewebsitetemplates.com/go/twitter/" target="_blank" id="twitter">Twitter</a>
						<a href="http://freewebsitetemplates.com/go/googleplus/" target="_blank" id="googleplus">Google+</a>
						<a href="index.html" id="rss">RSS</a>
					</div>
					<p>
						This website template has been designed by <a href="http://www.freewebsitetemplates.com/">Free Website Templates</a> for you, for free. You can replace all this text with your own text. You can remove any link to our website from this website template, you&#39;re free to use this website template without linking back to us. If you&#39;re having problems editing this website template, then don&#39;t hesitate to ask for help on the <a href="http://www.freewebsitetemplates.com/forums/">Forums</a>.
					</p>
				</div>
			</div>
		</div>
	</div>
</body>
</html>