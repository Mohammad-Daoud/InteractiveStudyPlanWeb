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
    <style>
        html {
            box-sizing: border-box;
            font-size: 62.5%;
        }

        * {
            padding: 0;
            margin: 0;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
            box-sizing: inherit;
        }
        *::after, *::before {
            box-sizing: inherit;
        }

        .timer-bar-wrapper, .drop-zone [class^=success-], .drop-zone {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }

        body {
            background-color: #24a35a;
        }

        p {
            font-weight: 600;
            font-family: "Titillium Web", Arial, sans-serif;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
            color: #ecf0f1;
        }
        @media screen and (max-width: 599px) {
            p {
                font-size: 20px;
                font-size: 2rem;
            }
        }
        @media screen and (min-width: 600px) {
            p {
                font-size: 24px;
                font-size: 2.4rem;
            }
        }
        @media screen and (min-width: 990px) {
            p {
                font-size: 27px;
                font-size: 2.7rem;
            }
        }
        @media screen and (min-width: 1200px) {
            p {
                font-size: 30px;
                font-size: 3rem;
            }
        }

        .drop-zone {
            transition: height 0.25s, background-color 0.6s, border 0.25s;
            border: 3px dashed #ecf0f1;
            border-radius: 10px;
            background-color: transparent;
            width: 80%;
            height: 200px;
        }
        @media screen and (max-width: 599px) {
            .drop-zone {
                max-width: 200px;
                max-height: 200px;
            }
        }
        @media screen and (min-width: 600px) {
            .drop-zone {
                max-width: 260px;
                max-height: 260px;
            }
        }
        @media screen and (min-width: 990px) {
            .drop-zone {
                max-width: 320px;
                max-height: 320px;
            }
        }
        @media screen and (min-width: 1200px) {
            .drop-zone {
                max-width: 480px;
                max-height: 480px;
            }
        }
        .drop-zone p {
            text-align: center;
        }
        .drop-zone p.timer-info {
            margin-top: 12px;
        }
        .drop-zone [class^=success-] {
            opacity: 0;
            color: #24a35a;
        }

        .timer-bar-wrapper {
            border-radius: 4px;
            box-shadow: 0 5px 11px 0 rgba(0, 0, 0, 0.18), 0 4px 15px 0 rgba(0, 0, 0, 0.15);
            width: 80%;
            height: 10px;
            background-color: #555;
        }
        .timer-bar-wrapper .timer-bar,
        .timer-bar-wrapper .timer-info {
            position: absolute;
            left: 0;
        }
        .timer-bar-wrapper .timer-bar {
            top: 0;
            width: 0;
            height: inherit;
            background-color: #ecf0f1;
            border-radius: inherit;
        }
        .timer-bar-wrapper .timer-info {
            font-weight: 400;
            margin-left: -15px;
        }
        .timer-bar-wrapper .wrapper {
            overflow: hidden;
        }
        .timer-bar-wrapper .wrapper .success-text {
            font-weight: 600;
        }
        @media screen and (max-width: 599px) {
            .timer-bar-wrapper .wrapper .success-icon {
                font-size: 180px;
                font-size: 18rem;
            }
            .timer-bar-wrapper .wrapper .success-text {
                display: none !important;
            }
        }
        @media screen and (min-width: 600px) {
            .timer-bar-wrapper .wrapper .success-icon {
                top: calc(50% - 20px);
                font-size: 180px;
                font-size: 18rem;
            }
            .timer-bar-wrapper .wrapper .success-text {
                top: calc(50% + 25px);
                font-size: 22px;
                font-size: 2.2rem;
            }
        }
        @media screen and (min-width: 990px) {
            .timer-bar-wrapper .wrapper .success-icon {
                top: calc(50% - 25px);
                font-size: 240px;
                font-size: 24rem;
            }
            .timer-bar-wrapper .wrapper .success-text {
                top: calc(50% + 28px);
                font-size: 28px;
                font-size: 2.8rem;
            }
        }
        @media screen and (min-width: 1200px) {
            .timer-bar-wrapper .wrapper .success-icon {
                top: calc(50% - 38px);
                font-size: 300px;
                font-size: 30rem;
            }
            .timer-bar-wrapper .wrapper .success-text {
                top: calc(50% + 42px);
                font-size: 42px;
                font-size: 4.2rem;
            }
        }

        .expand {
            transition: height 0.35s 0.25s ease-in, border-radius 0.35s 0.35s ease-out;
            border-radius: 50%;
        }

        .up {
            opacity: 1;
            -webkit-animation: bounceInUp 0.6s;
            animation: bounceInUp 0.6s;
        }

        @-webkit-keyframes bounceInUp {
            from, 60%, 75%, 90%, to {
                -webkit-animation-timing-function: cubic-bezier(0.215, 0.61, 0.355, 1);
                animation-timing-function: cubic-bezier(0.215, 0.61, 0.355, 1);
            }
            from {
                transform: translate(-50%, calc(-50% + 100px));
            }
            35% {
                opacity: 0;
            }
            70% {
                opacity: 1;
                transform: translate(-50%, calc(-50% - 40px));
            }
            80% {
                transform: translate(-50%, calc(-50% - 35px));
            }
            to {
                opacity: 1;
            }
        }

        @keyframes bounceInUp {
            from, 60%, 75%, 90%, to {
                -webkit-animation-timing-function: cubic-bezier(0.215, 0.61, 0.355, 1);
                animation-timing-function: cubic-bezier(0.215, 0.61, 0.355, 1);
            }
            from {
                transform: translate(-50%, calc(-50% + 100px));
            }
            35% {
                opacity: 0;
            }
            70% {
                opacity: 1;
                transform: translate(-50%, calc(-50% - 40px));
            }
            80% {
                transform: translate(-50%, calc(-50% - 35px));
            }
            to {
                opacity: 1;
            }
        }
    </style>
</head>
<body>
<div class="drop-zone">
    <div class="timer-bar">
        <div class="wrapper">
            <i class='success-icon ion-ios-checkmark-empty'></i>
            <p class='success-text'></p>
        </div>
    </div>
    <p class="timer-info">Drop your file here</p>
</div>
<%--<div class="upload">
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
</div>--%>
<script>
    $(function () {

        var totalTime = 6, // seconds
            percent = 0,
            $sIcon = $('.success-icon'),
            $sText = $('.success-text'),
            $info = $('.timer-info'),
            $bar = $('.timer-bar'),
            $dropZone = $('.drop-zone'),
            dropZone = $('.drop-zone')[0],
            width = $dropZone.width(),
            countdown,
            countdownOver = false;

        var startCountdown = function () {
            $dropZone.css('border', 'none');
            $dropZone.addClass('timer-bar-wrapper');
            $info.text('0%');
            countdown = setInterval(updateBar, 25);
        };

        $(window).resize(function () {
            if (countdownOver) {
                width = $dropZone.width();
                $dropZone.css('height', width);
            }
        });

        var fileStatus = function () {
            $sIcon
                .addClass('up')
                .delay(250)
                .fadeTo(250, 1, 'swing');
            $sText
                .text('File uploaded')
                .delay(500)
                .fadeTo(350, 1, 'swing');
            $dropZone.css('transition', 'none');
        };

        var triggerFinish = function () {
            $dropZone
                .css('height', width)
                .addClass('expand');
            $info.fadeTo(250, 0, 'swing');
            setTimeout(fileStatus, 700);
        };

        var stopCountdown = function () {
            clearInterval(countdown);
            $('.timer-info').text('100%');
            triggerFinish();
        };

        var updateBar = function () {
            percent++;
            // /40, because it's called every 25ms
            // -> 25ms * 40 = 1 sec
            var per = (100 * percent / totalTime) / 40;
            $bar.css('width', per + '%');
            $info
                .css('left', per + '%')
                .text(per.toFixed(1) + '%');
            if (per >= 100) {
                stopCountdown();
                countdownOver = true;
            }
        };

        dropZone.addEventListener('dragover', function (e) {
            e.stopPropagation();
            e.preventDefault();
        });
        dropZone.addEventListener('drop', function (e) {
            e.stopPropagation();
            e.preventDefault();
            setTimeout(startCountdown, 250)
        });
    });

</script>
</body>
</html>
