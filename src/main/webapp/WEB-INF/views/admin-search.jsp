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
        <select name="schoolName" type="text" placeholder="School Name" id="schoolName">
            <option value="kasit"> King Abdullah II School of Information Technology </option>
        </select>
        <br/> <br/>
        <label for="department"><strong>Department:</strong> </label>
        <select id="department" name="departmentName">
            <option value="cs"> Computer Science </option>
            <option value="cis"> Computer Information System </option>
        </select>
        <br/> <br/>
        <label for="year"><strong>Year: </strong></label>
        <select id="year" name="year">
            <option value="2017"> 2017 </option>
            <option value="2018"> 2018 </option>
        </select>
        <br/> <br/>
        <input type="submit" value="search"/>
        &ensp;<br>
        <input type="reset" value="clear"/>


    </form>
</div>
</body>
</html>