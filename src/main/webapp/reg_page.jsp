<%--
  Created by IntelliJ IDEA.
  User: Yi
  Date: 10/21/18
  Time: 11:21 AM
  To change this template use File | Settings | File Templates.
--%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->


    <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
    <title>SignUp_page</title>

    <style type="text/css">
        .divForm {
            position: absolute; /*绝对定位*/
            width: 500px;
            height: 1000px;

            /*border: 1px solid red;*/
            text-align: center; /*(让div中的内容居中)*/
            top: 50%;
            left: 50%;
            margin-top: 10px;
            margin-left: 110px;
        }
    </style>


</head>


<body ng-app="myApp">

<script src="angularjslab.js"></script>

<%--<header>--%>
    <%--<!--  -->--%>
    <%--<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">--%>
        <%--<a class="navbar-brand" href=" ">SNOOZE</a>--%>
        <%--<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse"--%>
                <%--aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">--%>
            <%--<span class="navbar-toggler-icon"></span>--%>
        <%--</button>--%>
        <%--<div class="collapse navbar-collapse" id="navbarCollapse">--%>
            <%--<ul class="navbar-nav mr-auto">--%>
                <%--<li class="nav-item active">--%>
                    <%--<a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>--%>
                <%--</li>--%>
                <%--<li class="nav-item">--%>
                    <%--<a class="nav-link" href="#">Link</a>--%>
                <%--</li>--%>
                <%--&lt;%&ndash;<li class="nav-item">&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<a class="nav-link disabled" href="#">Disabled</a>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</li>&ndash;%&gt;--%>
            <%--</ul>--%>
            <%--<!-- <form class="form-inline mt-2 mt-md-0">--%>
              <%--<input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">--%>
              <%--<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>--%>
            <%--</form> -->--%>

            <%--<span>--%>
          <%--<li class="nav-item dropdown" navbar-light>--%>
            <%--<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"--%>
               <%--aria-haspopup="true" aria-expanded="false">--%>
              <%--Options--%>
            <%--</a>--%>
          <%--<div class="dropdown-menu" aria-labelledby="navbarDropdown" class="text-center">--%>
              <%--<a class="dropdown-item" href="login_page.jsp">LogIn</a>--%>
              <%--<a class="dropdown-item" href="reg_page.jsp">Register</a>--%>
              <%--<div class="dropdown-divider"></div>--%>
              <%--<a class="dropdown-item" href="login_page.jsp">Logout</a>--%>
          <%--</div>--%>
          <%--</li>--%>

            <%--</span>--%>

        <%--</div>--%>
    <%--</nav>--%>
<%--</header>--%>




<br>
<div class="text-center mb-2">

    <img src="imgs/snoozelogo.jpeg" alt="" width="300" height="250">

</div>

<div class="text-center mb-4">
    <h1 class="h3 mb-3 font-weight-normal">Sign Up</h1>
</div>



<div class="col-md-6 order-md-1 " ng-app="myApp" ng-controller="regController">


    <div class="divForm">

        <form class="needs-validation" novalidate ng-app="myApp" ng-controller="regController">


            <div class="row">

                <!-- Username and check  -->

                <br>


                <!-- Email and password   -->

                <label for="inputEmail">Email Address (please remember your this, needed when log in)</label>

                <br/>


                <input id="inputEmail" class="form-control"  name="email" type="email" placeholder="xxxxxxxxx@xxx.xxx" required autofocus
                       ng-model="users.inputEmail" style="width: 207%">

                <br>

                <label for="UserName">UserName</label>
                <input type="text" class="form-control" id="UserName" placeholder="user name" value="" required autofocus
                       ng-model="users.inputUsername" style="width: 207%">
                <div class="invalid-feedback">
                    Valid_user_name_is_required
                </div>


                <br>

                <label for="inputPassword">Password</label>
                <input type="password" id="inputPassword" class="form-control" placeholder="password" required
                       ng-model="users.inputPassword" style="width: 207%">

            </div>


            <div class="col-md-8 order-md-1 ">


                <div class="row">
                    <!-- Save botton -->
                    <div class="col-md-6 mb-3">
                        <br>
                        <br>
                        <br>
                        <button class="btn btn-lg btn-primary btn-block" style="width: 80%" align="center"
                                type="submit" ng-click="submitForm()">Save
                        </button>
                    </div>

                    <!-- Clean botton -->
                    <div class="col-md-6 mb-3">
                        <br>
                        <br>
                        <br>
                        <button class="btn btn-lg btn-primary btn-block " style="width: 80%" align="center"
                                type="reset">Clean
                        </button>

                    </div>
                </div>
            </div>

        </form>

    </div>
</div>

<script src="js/login_conlor.js"></script>
<%--<script>--%>
    <%--var reapp = angular.module('regApp',[]);--%>
    <%--reapp.controller('regController',function ($scope,$http) {--%>
        <%--$scope.users = {};--%>

        <%--$scope.submitForm = function () {--%>
            <%--// console.log('enter submitForm');--%>
            <%--$http({--%>
                <%--method:'post',--%>
                <%--url:'/snooze/signUp',--%>
                <%--params:{--%>
                    <%--"inputEmail":$scope.users.inputEmail,--%>
                    <%--"inputPassword":$scope.users.inputPassword,--%>
                    <%--"resp":$scope.resp,--%>
                    <%--"inputUsername":$scope.users.inputUsername--%>

                <%--},--%>

                <%--headers: {--%>
                    <%--'Content-Type': 'application/x-www-form-urlencoded'--%>
                <%--}--%>
                <%--// transformRequest: function (params) {--%>
                <%--//     return $.param(params);--%>
                <%--// }--%>
            <%--}).then(function(resp){--%>
                <%--if (resp.data === "true"){--%>
                    <%--console.log(resp.data);--%>
                    <%--alert("Register Succeed");--%>
                    <%--window.location.href="http://localhost:8080/login_page.jsp";--%>


                <%--}else if(resp.data === "false") {--%>
                    <%--console.log('Email or Passowrd Error', resp.data);--%>
                    <%--alert("Email had been occupied ");--%>
                <%--}--%>


            <%--});--%>
        <%--}--%>
    <%--});--%>
<%--</script>--%>








<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="jquery/jquery-3.2.1.js"></script>
<script src="bootstrap/js/bootstrap.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>


</body>
</html>