<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Logout.</title>
</head>
<body>

<%
String username=null, sessionid=null;
Cookie[] cookies = request.getCookies();
for(Cookie cookie:cookies){
	if(cookie.getName().equals("username")){
		username=cookie.getValue();
	}
	if(cookie.getName().equals("JSESSIONID")){
		sessionid=cookie.getValue();
	}
}
%>
UserName: <%= username %><br/>
Password: <%= sessionid %><br/>
<form action="<%= request.getContextPath() %>/Handler" method="get">
<input type="hidden" name="action" value="destroy" /><br/>
<input type="submit" value="Logout" />
</form>
</body>
</html>