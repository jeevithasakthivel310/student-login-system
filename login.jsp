<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <title>Student Login</title>
</head>
<body>

<h2>Student Login</h2>

<form action="login.jsp" method="post">
    <label>Username:</label>
    <input type="text" name="username" required>
    <br><br>

    <label>Password:</label>
    <input type="password" name="password" required>
    <br><br>

    <input type="submit" value="Login">
</form>

<%
    if ("POST".equalsIgnoreCase(request.getMethod())) {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if ("student".equals(username) && "1234".equals(password)) {
            response.sendRedirect("welcome.jsp");
        } else {
%>
            <p>Invalid Username or Password</p>
<%
        }
    }
%>

</body>
</html>
