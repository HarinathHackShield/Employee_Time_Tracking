<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f9;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	margin: 0;
}

.container {
	background: #fff;
	padding: 20px;
	border-radius: 8px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	width: 300px;
	text-align: center;
}

h1 {
	margin-bottom: 20px;
	color: #333;
}

input[type="text"], input[type="password"] {
	width: 100%;
	padding: 10px;
	margin: 10px 0;
	border: 1px solid #ddd;
	border-radius: 4px;
	box-sizing: border-box;
	font-size: 16px;
}

input[type="submit"] {
	background-color: #4CAF50;
	color: white;
	padding: 15px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	font-size: 16px;
}

input[type="submit"]:hover {
	background-color: #45a049;
}

p {
	color: red;
	font-weight: bold;
}

.footer {
	margin-top: 20px;
}
</style>
</head>
<body>
	<div class="container">
		<h1>Login</h1>
		<form action="LoginServlet" method="post">
			<input type="text" name="username" placeholder="Username" required><br>
			<input type="password" name="password" placeholder="Password"
				required><br> <input type="submit" value="Login">
		</form>
		<% if (request.getAttribute("error") != null) { %>
		<p><%= request.getAttribute("error") %></p>
		<% } %>
	</div>
</body>
</html>
