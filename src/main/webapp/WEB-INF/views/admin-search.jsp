<%--
  Created by IntelliJ IDEA.
  User: mdss4
  Date: 5/15/2022
  Time: 3:58 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="common/navigation.jsp" %>
<%@include file="common/styleJsp.jsp" %>
<%@include file="common/formStyle.jsp" %>
<html>
<head>
    <title>Admin Page</title>
</head>
<body>
<div class="search">
    <form action="/search" method="POST">
        <h2>Search for study plan</h2>
        <br>
        <label for="schoolName" ><strong>School Name:</strong> </label>
        <input name="schoolName" type="text" placeholder="School Name" id="schoolName">
        <br/> <br/>
        <label for="department"><strong>Department:</strong> </label>
        <input name="department" type="text" placeholder="Department" id="department">
        <br/> <br/>
        <label for="year"><strong>Year: </strong></label>
        <input name="year" type="number" min="2000" placeholder="year (after 2000) " id="year">
        <br/> <br/>
        <input type="submit" value="search"/>
        &ensp;<br>
        <input type="reset" value="clear"/>


    </form>
</div>
</body>
</html>