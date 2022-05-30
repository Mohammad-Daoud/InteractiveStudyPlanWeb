<%--
  Created by IntelliJ IDEA.
  User: mdss4
  Date: 5/15/2022
  Time: 2:52 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div style="position: fixed;z-index: 9999;margin-bottom: 50px">
    <header class="list"
            style="justify-content: space-around;
             position: fixed;
              width: 100%;
               z-index: 999;
                border-bottom: 5px solid rgb(255, 46, 46);
                 margin-bottom: 250px;
                 box-shadow: rgba(0, 0, 0, 0.035) 0px 2.8px 2.2px, rgba(0, 0, 0, 0.047) 0px 6.7px 5.3px, rgba(0, 0, 0, 0.06) 0px 12.5px 10px, rgba(0, 0, 0, 0.07) 0px 22.3px 17.9px, rgba(0, 0, 0, 0.086) 0px 41.8px 33.4px, rgba(0, 0, 0, 0.12) 0px 100px 80px;">

        <div style="margin-left: 20px;">

            <img src="<c:url value="./../resource/image/logoUniversity.png"/>" alt="Logo" width="40px" height="50px"
            style="margin-top: 5px"/>

        <strong style="font-size: 15px;margin-left: 30px;"><a href="http://localhost:8080/login" style="color: rgb(255, 46, 46); text-decoration-line: none;">Logout</a></strong>
        </div>

            <a class="listElement" style="color: rgb(238, 251, 238); text-decoration-line: none;" href="/edit-plan" >Edit Study Plan </a>
            <a class="listElement" style="color: rgb(238, 251, 238); text-decoration-line: none;" href="/adminSearch" >Search Study Plan  </a>


<%--    </header>--%>
<%--    <div class="container-fluid" >--%>
<%--        <div style="margin-right: 20px">--%>
<%--            <img src="<c:url value="./../resource/image/logoUniversity.png"/>" alt="Logo" width="40px" height="50px"/>--%>
<%--        </div>--%>
<%--        <button class="navbar-toggler" type="button" data-mdb-toggle="collapse"--%>
<%--                data-mdb-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"--%>
<%--                aria-label="Toggle navigation">--%>
<%--            <i class="fas fa-bars"></i>--%>
<%--        </button>--%>
<%--        <div class="collapse navbar-collapse" id="navbarSupportedContent">--%>
<%--            <form class="me-3">--%>

<%--            </form>--%>
<%--            <ul class="navbar-nav me-auto mb-2 mb-lg-0">--%>
<%--                <li class="nav-item">--%>
<%--                    <a class="nav-link" href="/edit-plan">Edit Study Plan</a>--%>
<%--                </li>--%>
<%--                <li class="nav-item">--%>
<%--                    <a class="nav-link" href="/adminSearch">Search Study Plan </a>--%>
<%--                </li>--%>
<%--            </ul>--%>
<%--        </div>--%>
<%--    </div>--%>
</div>
