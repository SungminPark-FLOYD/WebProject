
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sungmin Park Page</title>
    <link rel="stylesheet" href="css/sidebar.css">
    <style>
        body {
            background-color: lightgray;
        }
        body * {
            box-sizing: border-box;
        }
        #main {
            margin-left: 10%;
        }
        div.dd {
            border:2px groove darkslategray;
            width:  20%;
            height:  250px;
            margin: 5px;
            float: left;
            overflow: auto;
        }
        div#title {
            background-color: #111111;
            border-radius: 10px;
            margin: 5px;
            height: 10%;
            font-style: revert;
            font-size: large;
            color: white;
            text-align: center;
            padding-top: 1.7%;
        }
        .title {
            border-radius: 10px;
            padding: 10px;
            margin: 5px;
            cursor: pointer;
        }
        h4 {
            border:  1px solid gray;
            margin: 10px;
            background-color: dimgray;
        }
        h4:hover {
            background-color: skyblue;
        }

        ul {
            display: none;
        }
        button {

        .title a {
            text-decoration: none black solid;
        }

        }
    </style>
    <script>
        window.onload = function() {
            var h4Elements = document.getElementsByTagName('h4');
            for (var i = 0; i < h4Elements.length; i++) {
                h4Elements[i].addEventListener('click', function() {
                    var display = this.nextElementSibling.style.display;
                    this.nextElementSibling.style.display = display === 'block' ? 'none' : 'block';
                });
            }
        };
        function openNav() {
            document.getElementById("mySidebar").style.width = "250px";
            document.getElementById("main").style.marginLeft = "250px";
        }

        function closeNav() {
            document.getElementById("mySidebar").style.width = "0";
            document.getElementById("main").style.marginLeft= "0";
        }
    </script>
</head>
<body>

<div id="title">박성민
    <button id="menuBtn" class="openbtn" onclick="openNav()">리스트</button>
</div>
<div id="mySidebar" class="sidebar">
    <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">X</a>
    <a href="http://192.168.142.3/webpro/index.html" target="_self" style="color: #ffffff">배미숙</a>
    <a href="http://192.168.142.19/webpro/index.html" target="_self" style="color: #ffffff">박건태</a>
    <a href="http://192.168.142.15/webpro/index.html" target="_self" style="color: #ffffff">황지훈</a>
    <a href="http://192.168.142.20/webpro/index.html" target="_self" style="color: #ffffff">박소영</a>
    <a href="http://192.168.142.26/webpro/index.html" target="_self" style="color: #ffffff">홍수지</a>
    <a href="http://192.168.142.18/webpro/index.html" target="_self" style="color: #ffffff">유하늘</a>
    <a href="http://192.168.142.4/webpro/index.html" target="_self" style="color: #ffffff">박승준</a>
    <a href="http://192.168.142.37/webpro/index.html" target="_self" style="color: #ffffff">정성윤</a>
    <a href="http://192.168.142.17/webpro/index.html" target="_self" style="color: #ffffff">한요한</a>
    <a href="http://192.168.142.38/webpro/index.html" target="_self" style="color: #ffffff">이성경</a>
    <a href="http://192.168.142.32/webpro/index.html" target="_self" style="color: #ffffff">장민우</a>
    <a href="http://192.168.142.33/webpro/index.html" target="_self" style="color: #ffffff">나성진</a>
    <a href="http://192.168.142.16" target="_self" style="color: #ffffff">박성민</a>
    <a href="http://192.168.142.5/webpro/index.html" target="_self" style="color: #ffffff">조성훈</a>
    <a href="http://192.168.142.22/webpro/index.html" target="_self" style="color: #ffffff">신의정</a>
    <a href="http://192.168.142.6/webpro/index.html" target="_self" style="color: #ffffff">김병수</a>
    <a href="http://192.168.142.21/webpro/index.html" target="_self" style="color: #ffffff">이기현</a>
</div>

<div id="main">

<div class="dd">
    <h4 class="title">1219</h4>
    <ul>
        <li><a href="./1219/pre태그.html">pre태그.html </a> </li>
        <li><a href="./1219/리스트항목.html">리스트항목.html </a> </li>
        <li><a href="./1219/리스트항목ol.html">리스트항목ol.html </a> </li>
        <li><a href="./1219/제목과문단.html">제목과문단.html </a> </li>
    </ul>
</div>

<div class="dd">
    <h4 class="title">1220</h4>
    <ul>
        <li><a href="./1220/table작성.html">table작성.html </a> </li>
        <li><a href="./1220/div와span.html">div와span.html </a> </li>
        <li><a href="./1220/테이블병함.html">테이블병함.html </a> </li>
        <li><a href="./1220/example1.html">example1.html</a> </li>
    </ul>
</div>

<div class="dd">
    <h4 class="title">1221</h4>
    <ul>
        <li><a href="./1221/audio.html">audio.html </a> </li>
        <li><a href="./1221/flex레이아웃.html">flex레이아웃.html </a> </li>
        <li><a href="./1221/form1.html">form1.html </a> </li>
        <li><a href="./1221/from.html">from.html</a> </li>
    </ul>
</div>
<div class="dd">
    <h4 class="title">1222</h4>
    <ul>
        <li><a href="./1222/form타입.html">form타입.html </a> </li>
        <li><a href="./1222/formButton.html">formButton.html </a> </li>
    </ul>
</div>
<div class="dd">
    <h4 class="title">1226</h4>
    <ul>
        <li><a href="./1226/form입력3.html">form입력3.html </a> </li>
        <li><a href="./1226/입력테스트.html">입력테스트.html </a> </li>

    </ul>
</div>
<div class="dd">
    <h4 class="title">1227</h4>
    <ul>
        <li><a href="./1227/backgroundImage.html">backgroundImage.html </a> </li>
        <li><a href="./1227/backgroundImage2.html">backgroundImage2.html </a> </li>
        <li><a href="./1227/boxBorder.html">boxBorder.html </a> </li>
        <li><a href="./1227/boxModel.html">boxModel.html </a> </li>
        <li><a href="./1227/fontFamily.html">fontFamily.html </a> </li>
        <li><a href="./1227/imageSize.html">imageSize.html </a> </li>
        <li><a href="./1227/가로리스트.html">가로리스트.html </a> </li>
        <li><a href="./1227/의사클래스구조.html">의사클래스구조.html </a> </li>
        <li><a href="./1227/의사클래스상태.html">의사클래스상태.html </a> </li>
    </ul>
</div>
<div class="dd">
    <h4 class="title">숙제</h4>
    <ul>
        <li><a href="./gugudan/구구단.html">구구단(단입력)</a> </li>
        <li><a href="./SignUp/회원가입1.html">회원가입.html</a> </li>
        <li><a href="./gugudan/구구단.jsp">구구단.jsp </a> </li>
        <li><a href="./1229Sub/id중복검사.html">id중복검사.html</a> </li>
        <li><a href="./1229Sub/memberList.jsp">memberList.jsp</a> </li>
    </ul>
</div>
<div class="dd">
    <h4 class="title">1228</h4>
    <ul>
        <li><a href="./1228/flex레이아웃.html">flex레이아웃.html</a> </li>
        <li><a href="./1228/float레이아웃.html">float레이아웃.html</a> </li>
        <li><a href="./1228/float정렬.html">float정렬.html </a> </li>
        <li><a href="./1228/table속성.html">table속성.html</a> </li>
        <li><a href="./1228/레이아웃Position.html">레이아웃Position.html</a> </li>
        <li><a href="./1228/요소순서zIndex.html">요소순서zIndex.html </a> </li>
    </ul>
</div>
<div class="dd">
    <h4 class="title"> 1229</h4>
<ul>
    <li><a href="./1229/jsTest1.html">jsTest1.html</a> </li>
    <li><a href="./1229/write출력.html">write출력.html</a> </li>
    <li><a href="./1229/변수범위.html">변수범위.html</a> </li>
    <li><a href="./1229/외부스크립트.html">외부스크립트.html</a> </li>
    <li><a href="./1229/입력함수.html">입력함수.html</a> </li>
</ul>
</div>
<div class="dd">
    <h4 class="title">0102</h4>
    <ul>
        <li><a href="./0102/가위바위보.html">가위바위보.html</a> </li>
        <li><a href="./0102/반목문.html">반목문.html</a> </li>
        <li><a href="./0102/반목연습.html">반복연습.html</a> </li>
        <li><a href="./0102/배열선언사용.html">배열선언사용.html</a> </li>
    </ul>
</div>
<div class="dd">
    <h4 class="title">0103</h4>
    <ul>
        <li><a href="./0103/circle프로토타입함수추가.html">circle프로토타입함수추가.html</a> </li>
        <li><a href="./0103/confirm함수.html">confirm함수.html</a> </li>
        <li><a href="./0103/객체rect동적추가.html">객체rect동적추가.html</a> </li>
        <li><a href="./0103/객체rect리터럴.html">객체rect리터럴.html</a> </li>
        <li><a href="./0103/객체함수.html">객체함수.html</a> </li>
        <li><a href="./0103/객체함수 Circle.html">객체함수 Circle.html</a> </li>
        <li><a href="./0103/배열메소드.html">배열메소드.html</a> </li>
        <li><a href="./0103/함수연산.html">함수연산.html</a> </li>
    </ul>
</div>
<div class="dd">
    <h4 class="title">0104</h4>
    <ul>
        <li><a href="./0104/Date객체.html">Date객체.html</a> </li>
        <li><a href="./0104/Date객체2.html">Date객체2.html</a> </li>
        <li><a href="./0104/배열문제.html">배열문제.html</a> </li>
    </ul>
</div>
</div>
</body>
</html>
