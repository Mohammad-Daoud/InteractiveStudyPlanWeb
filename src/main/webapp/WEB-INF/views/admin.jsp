<%--
  Created by IntelliJ IDEA.
  User: mdss4
  Date: 3/19/2022
  Time: 2:29 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="common/navigation.jsp"%>
<%@include file="common/styleJsp.jsp"%>
<%@include file="common/formStyle.jsp" %>

<html>
<head>
    <title>Admin File Upload</title>
</head>
<body>
<div class="upload">
    <div class="upload-files">
        <header>
            <p>
                <i class="fa fa-cloud-upload" aria-hidden="true"></i>
                <span class="up">up</span>
                <span class="load">load</span>
            </p>
        </header>
        <div class="body" id="drop">
            <i class="fa fa-file-text-o pointer-none" aria-hidden="true"></i>
            <p class="pointer-none"><b>Drag and drop</b> files here <br /> or <a href="" id="triggerFile">browse</a> to begin the upload</p>
            <input type="file" multiple="multiple" />
        </div>
        <footer>
            <div class="divider">
                <span><AR>FILES</AR></span>
            </div>
            <div class="list-files">
                <!--   template   -->
            </div>
            <button class="importar">UPDATE FILES</button>
        </footer>
    </div>
</div>

</body>
</html>
