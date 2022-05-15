<%--
  Created by IntelliJ IDEA.
  User: mdss4
  Date: 5/15/2022
  Time: 2:52 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav class="navbar navbar-expand-lg navbar-dark "style="background-color: forestgreen">
    <div class="container-fluid">
        <button class="navbar-toggler" type="button" data-mdb-toggle="collapse"
                data-mdb-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
            <i class="fas fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <form class="me-3">

            </form>
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <div class="dropdown">
                        <p class="nav-link">Edit Users</p>
                        <div class="dropdown-content">
                            <a href="/add-admin">add admin</a>
                            <a href="/add-instructor">add instructor</a>
                            <a href="/add-student">add student</a>
                        </div>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/add-plan">Add Study Plan</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/adminSearch">Search Study Plan </a>
                </li>

                    <h3 style="color: whitesmoke">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${username} admin tool</h3>

            </ul>
        </div>
    </div>
</nav>
