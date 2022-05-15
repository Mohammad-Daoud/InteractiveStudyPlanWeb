<%--
  Created by IntelliJ IDEA.
  User: mdss4
  Date: 5/15/2022
  Time: 5:15 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="common/navigation.jsp" %>
<%@include file="common/styleJsp.jsp" %>
<%@include file="common/formStyle.jsp" %>
<html>
<head>
    <title>Add Instructor Page</title>
</head>
<body>
<h2>Add Instructor</h2>
<br>
<label for="firstName"><strong>First Name:</strong> </label>
<input name="firstName" type="text" placeholder="First Name" id="firstName">
<br/> <br/>
<label for="lastName"><strong>Last Name:</strong> </label>
<input name="lastName" type="text" placeholder="Last Name" id="lastName">
<br/> <br/>
<label for="username"><strong>Username:</strong> </label>
<input name="username" type="text" placeholder="Username" id="username">
<br/> <br/>
<label for="password"><strong>Password: </strong></label>
<input name="password" type="password" placeholder="password " id="password">
<br/> <br/>
<input type="submit" value="Add"/>
&ensp;<br>
<input type="reset" value="clear"/>
</body>
</html>
