<%--
  Created by IntelliJ IDEA.
  User: mdss4
  Date: 5/14/2022
  Time: 8:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Design by foolishdeveloper.com -->
    <title>Login</title>

    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet">
    <!--Stylesheet-->
    <style media="screen">
        *,
        *:before,
        *:after{
            padding: 0;
            margin: 0;
            box-sizing: border-box;
        }
        body{
            background-color: #45a049;
        }
        .background{
            width: 430px;
            height: 520px;
            position: absolute;
            transform: translate(-50%,-50%);
            left: 50%;
            top: 50%;
        }
        .background .shape{
            height: 200px;
            width: 200px;
            position: absolute;
            border-radius: 50%;
        }
        .shape:first-child{
            background: linear-gradient(
                    #382929,
                    #231F20
            );
            /*filter: blur(2px);*/
            right: 50px;
            top: -110px;
        }
        .shape:last-child{
            background: linear-gradient(
                    to right,
                    #FF0000,
                    #ED1C24

            );
            /*filter: blur(2px);*/
            bottom: -110px;
            right: -300px;
        }
        form{
            height: 600px;
            width: 400px;
            background-color: rgba(255, 255, 255, 0.02);
            position: absolute;
            transform: translate(-50%,-50%);
            top: 50%;
            left: 63%;
            border-radius: 10px;
            backdrop-filter: blur(20px);
            border: 2px solid rgba(255, 255, 255, 0.18);
            box: 0 0 40px rgba(8,7,16,0.6);
            padding: 50px 35px;
        }
        form *{
            font-weight: 5000;
            font-family: 'Poppins',sans-serif;
            color: white;
            letter-spacing: 0.5px;
            outline: none;
            border: none;
        }
        form h3{
            font-size: 32px;
            font-weight: 500;
            line-height: 42px;
            text-align: center;

        }

        label{
            display: block;
            margin-top: 30px;
            font-size: 16px;
            font-weight: 500;
        }
        input{
            display: block;
            height: 50px;
            width: 100%;
            background-color: rgba(255,255,255,0.07);
            border-radius: 3px;
            padding: 0 10px;
            margin-top: 8px;
            font-size: 14px;
            font-weight: 300;
        }
        ::placeholder{
            color: white;
        }
        button{
            margin-top: 80px;
            width: 100%;
            background: linear-gradient(
                    to right,
                    black,
                    #45a049
            );
            color: white;
            border: 1px solid white;
            padding: 15px 0;
            font-size: 18px;
            font-weight: 600;
            border-radius: 5px;
            cursor: pointer;
        }
        button:hover{
            background: linear-gradient(
                    to right,
                    #ED1C24,
                    #45a049
            );

            color: white;
            border: 1px solid white;
        }
        .social{
            margin-top: 30px;
            display: flex;
        }
        .social div{
            background: red;
            width: 150px;
            border-radius: 3px;
            padding: 5px 10px 10px 5px;
            color: black;
            text-align: center;
        }
        .social div:hover{
            background-color: black;
        }
        .social .fb{
            margin-left: 25px;
        }
        .social i{
            margin-right: 4px;
        }

    </style>
</head>
<body>
    <div style="text-align: left;font-weight: 99999">
    <img src="<c:url value="./../resource/image/logoUniversity.png"/>" alt="Logo" width="600px" height="750px"
    style="text-align: left;margin-top: 5%;margin-left: 9%"/>
    </div>
<div class="background">
    <div class="shape"></div>
    <div class="shape"></div>
</div>
<form action="/login" method="POST">
    <h3><strong style="font-size: 60px;color: rgb(233, 245, 233)">Login</strong></h3>
    <label for="username">Username</label>
    <input name ="username" type="text" placeholder="Username" id="username">

    <label for="password">Password</label>
    <input name = "password" type="password" placeholder="Password" id="password">

    <button>Log In</button>
    <br>
    <p>${errorMessage}</p>

</form>
</body>
</html>
