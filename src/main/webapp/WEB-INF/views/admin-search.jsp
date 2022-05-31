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
    <style>
        * {
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
        }

        body {
            font-weight: 400;
            font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
            font-size: 1rem;
            line-height: 1.58;
            color: #333;
            background-color: rgb(238, 251, 238);
            position: absolute;
            height: 50%;
            width: 100%;

        }

        body {
            height: 50%;
            width: 100%;
            position: absolute;
            top: 0;
            left: 0;
            background: rgb(238, 251, 238);
            content: "";
            z-index: 0;
        }

        h1, h2, h3, h4, h5, h6 {
            margin-top: 20px;
            margin-bottom: 20px;
        }

        h1 {
            font-size: 1.7em;
        }

        a {
            color: green;
        }

        button {
            background-color: #00A650;
            color: white;
            box-shadow: none;
            border: 5px solid transparent;
            font-size: 14px;
            outline: none;
            line-height: 100%;
            white-space: nowrap;
            vertical-align: middle;
            padding: 0.6rem 1rem;
            border-radius: 2px;
            transition: all 0.2s ease-in-out;
            cursor: pointer;
            min-height: 38px;
        }

        button:hover{
            background-color:#02d166 ;
        }
        .upload-container {
            max-width: 700px;
            margin-left: auto;
            margin-right: auto;
            background-color: #fff;
            box-shadow: 0 1px 11px rgba(0, 0, 0, 0.27);
            margin-top: 60px;
            min-height: 400px;
            position: relative;
            padding: 20px;
            border-radius: 5px;
        }

        .upload-header h2 {
            font-weight: 500;
        }

    </style>
</head>
<body style="background-color: rgb(238, 251, 238); font-size: 15px">
<div class="upload-container" style="background-color: white; margin-top: 150px ">
    <form action="/search" method="POST" >
        <h2>Search A Study Plan</h2>
        <br>
        <label for="schoolName"><strong>School Name:</strong> </label>
        <select name="schoolName" type="text" placeholder="School Name" id="schoolName">
            <option value="kasit"> King Abdullah II School of Information Technology</option>
        </select>
        <br/> <br/>
        <label for="departmentName"><strong>Department:</strong> </label>
        <select id="departmentName" name="departmentName">
            <option value="cs"> Computer Science</option>
            <option value="cis"> Computer Information System</option>
        </select>
        <br/> <br/>

        <label for="year"><strong>Year: </strong></label>
        <select id="year" name="year">
            <option value="2017"> 2017</option>
            <option value="2018"> 2018</option>
        </select>
        <br/> <br/>
        <button class="submit" id="search" name="search" type="submit" value="search"
                style="height:50px;margin-top:15px;width: 100%;">Search</button>
        &ensp;<br>
    </form>
</div>
</body>
</html>