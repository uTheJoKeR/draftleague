<!DOCTYPE html>
<html lang="en">
<head>
  <title>Dashboard Page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-expand-md bg-dark navbar-dark">
	<a class="navbar-brand" href="#">
		<img src="DRAFT.png" alt="Logo" style="width:40px;">
		Navbar
	</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
  
  <div class="collapse navbar-collapse justify-content-end" id="collapsibleNavbar">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="#">Link</a>
      </li>
	
	  <% if (session.getAttribute("user") == null ) { %>
        <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Signup/Login</a>
              <div class="dropdown-menu" aria-labelledby="dropdown01">
                <a class="dropdown-item" href="/register.html">Sign Up</a>
                <a class="dropdown-item" href="/login.html">Login</a>
              </div>
        </li>
      <% } else { %>
        <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><%= session.getAttribute("username") %></a>
              <div class="dropdown-menu" aria-labelledby="dropdown01">
                <a class="dropdown-item" href="/profile">Profile</a>
                <a class="dropdown-item" href="/DraftLeague/logout.html">Logout</a>
              </div>
        </li>
        <% } %>
      <li class="nav-item">
        <a class="nav-link" href="#">Link</a>
      </li>    
    </ul>
  </div>  
</nav>
<br>



<div class="container">

	<h1>Welcome Name: <%= session.getAttribute("name") %></h1>
	<br />
	<h3>Collapsible Navbar</h3>
	<p>In this example, the navigation bar is hidden on small screens and replaced by a button in the top right corner (try to re-size this window).
	<p>Only when the button is clicked, the navigation bar will be displayed.</p>
<p>Tip: You can also remove the .navbar-expand-md class to ALWAYS hide navbar links and display the toggler button.</p>
</div>

</body>
</html>