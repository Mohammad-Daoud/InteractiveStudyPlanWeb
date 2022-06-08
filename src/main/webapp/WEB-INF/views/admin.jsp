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
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
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

        .clearfix:after {
            display: block;
            content: "";
            clear: both;
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

        button.primary {
            background-color: #00A650;
            box-shadow: 0 2px 2px 0 rgba(0, 0, 0, 0.12);
            color: #fff;
        }

        input {
            font-size: 1rem;
        }

        input[type="file"] {
            border: 1px solid #02d166;
            padding: 6px;
            max-width: 100%;
            border-radius: 5px;
        }

        .file-input {
            width: 100%;
        }

        .submit-btn {
            display: block;
            margin-top: 15px;
            min-width: 100px;
        }

        @media screen and (min-width: 500px) {
            .file-input {
                width: calc(100% - 115px);
            }

            .submit-btn {
                display: inline-block;
                margin-top: 0;
                margin-left: 10px;
                border-radius: 5px;
            }
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

        .upload-header {
            border-bottom: 1px solid #ececec;
        }

        .upload-header h2 {
            font-weight: 500;
        }

        .single-upload {
            padding-bottom: 20px;
            margin-bottom: 20px;
            border-bottom: 1px solid #e8e8e8;
        }

        .upload-response {
            overflow-x: hidden;
            word-break: break-all;
        }
        button:hover{
            background-color:#02d166 ;
        }
    </style>
</head>
<body style="font-size: 15px">
<div style="margin-top: 150px">
<noscript>
    <h2>Sorry! Your browser doesn't support Javascript</h2>
</noscript>
<div class="upload-container">
    <div class="upload-header">
        <h3>Edit Study Plan</h3>
    </div>
    <div class="upload-content">
        <div class="single-upload">
            <form id="singleUploadForm" name="singleUploadForm">
                <label for ="schoolName" ><strong> School Name:</strong> </label>
                <select id="schoolName" name="schoolName">
                    <option value="kasit"> King Abdullah II School of Information Technology </option>
                </select>
                <br><br>
                <label for ="departmentName"><strong> Department Name:</strong> </label>
                <select id="departmentName" name="departmentName">
                    <option value="cs"> Computer Science </option>
                </select>
                <br><br>
                <label for ="year"> <strong>Year:</strong> </label>
                <select id="year" name="year">
                    <option value="2017"> 2017 </option>
                </select>
                <br><br>
                <input id="singleFileUploadInput" type="file" name="file" class="file-input" required />
                <button type="submit" class="primary submit-btn">Submit</button>
            </form>
            <div class="upload-response">
                <div id="singleFileUploadError"></div>
                <div id="singleFileUploadSuccess"></div>
            </div>
        </div>
        <div class="university-upload">
            <h3>Upload University Plan </h3>
            <form id="universityUploadForm" name="universityUploadForm">
                <input id="universityFileUploadInput" type="file" name="files" class="file-input" required />
                <button type="submit" class="primary submit-btn">Submit</button>
            </form>
            <div class="upload-response">
                <div id="universityFileUploadError"></div>
                <div id="universityFileUploadSuccess"></div>
            </div>
        </div>
    </div>
    <br><br>
    <button class="primary submit-btn">
        <a href="http://localhost:8000/getTemplate" style="text-decoration-line: none; color: white">
        Download CSV template</a>
    </button>
</div>
</div>
<script>
    'use strict';

    var singleUploadForm = document.querySelector('#singleUploadForm');
    var singleFileUploadInput = document.querySelector('#singleFileUploadInput');
    var singleFileUploadError = document.querySelector('#singleFileUploadError');
    var singleFileUploadSuccess = document.querySelector('#singleFileUploadSuccess');

    var schoolName = $('#schoolName').val();
    var depName = $('#departmentName').val();
    var year = $('#year').val();

    var universityUploadForm = document.querySelector('#universityUploadForm');
    var universityFileUploadInput = document.querySelector('#universityFileUploadInput');
    var universityFileUploadError = document.querySelector('#universityFileUploadError');
    var universityFileUploadSuccess = document.querySelector('#universityFileUploadSuccess');

    var templateDownload = document.querySelector('templateDownload')

    function uploadSingleFile(file) {
        var formData = new FormData();
        formData.append("file", file);

        var xhr = new XMLHttpRequest();
        xhr.open("POST", "http://localhost:8000/uploadFile/"+schoolName+"/"+depName+"/"+year);

        xhr.onload = function() {
            console.log(xhr.responseText);
            var response = JSON.parse(xhr.responseText);
            if(xhr.status ==200) {
                singleFileUploadError.style.display = "none";
                singleFileUploadSuccess.innerHTML = "<p>File Uploaded Successfully.</p><p>DownloadUrl : <a href='" + response.fileDownloadUri + "' target='_blank'>" + response.fileDownloadUri + "</a></p>";
                singleFileUploadSuccess.style.display = "block";
            } else {
                singleFileUploadSuccess.style.display = "none";
                singleFileUploadError.innerHTML = (response && response.message) || "Some Error Occurred";
            }
        }

        xhr.send(formData);
    }
    function uploadUniversityFiles(file) {
        var formData = new FormData();
        formData.append("file", file);
        var xhr = new XMLHttpRequest();
        xhr.open("POST", "http://localhost:8000/uploadUniversity");

        xhr.onload = function() {
            console.log(xhr.responseText);
            var response = JSON.parse(xhr.responseText);
            if(xhr.status == 200) {
                universityFileUploadError.style.display = "none";
                universityFileUploadSuccess.innerHTML = "<p>File Uploaded Successfully.</p><p>DownloadUrl : <a href='" + response.fileDownloadUri + "' target='_blank'>" + response.fileDownloadUri + "</a></p>";
                universityFileUploadSuccess.style.display = "block";
            } else {
                universityFileUploadSuccess.style.display = "none";
                universityFileUploadError.innerHTML = (response && response.message) || "Some Error Occurred";
            }
        }

        xhr.send(formData);
    }

    singleUploadForm.addEventListener('submit', function(event){
        var files = singleFileUploadInput.files;
        if(files.length === 0) {
            singleFileUploadError.innerHTML = "Please select a file";
            singleFileUploadError.style.display = "block";
        }
        uploadSingleFile(files[0]);
        event.preventDefault();
    }, true);


    universityUploadForm.addEventListener('submit', function(event){
        var files = universityFileUploadInput.files;
        if(files.length === 0) {
            universityFileUploadError.innerHTML = "Please select a file";
            universityFileUploadError.style.display = "block";
        }
        uploadUniversityFiles(files[0]);
        event.preventDefault();
    }, true);


</script>
</body>
</html>