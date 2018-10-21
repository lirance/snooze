<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>






<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">

    <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
    <title>LogIn_page</title>
</head>


<body ng-app="myApp">

<script src="angularjslab.js"></script>
<header>
    <!--  -->
    <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
        <a class="navbar-brand" href=" ">SNOOZE</a >
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse"
                aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a >
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Link</a >
                </li>
                <%--<li class="nav-item">--%>
                    <%--<a class="nav-link disabled" href="#">Disabled</a >--%>
                <%--</li>--%>
            </ul>
            <!-- <form class="form-inline mt-2 mt-md-0">
              <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
              <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
            </form> -->

            <span>
          <li class="nav-item dropdown" navbar-light>
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
               aria-haspopup="true" aria-expanded="false">
              Options
            </a >
          <div class="dropdown-menu" aria-labelledby="navbarDropdown" class="text-center">
              <a class="dropdown-item" href="login_page.jsp">LogIn</a >
              <a class="dropdown-item" href="reg_page.jsp">Register</a >
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="login_page.jsp">Logout</a >
          </div>
          </li>
        </span>
        </div>
    </nav>
</header>

<br/>
<br/>
<br/>
<br/>
<!--   login form -->
<form class="form-signin text-center" ng-app="myApp" ng-controller="loginController">

    <!--    snooze logo picture -->
    <div class="text-center mb-2">

        <img src="imgs/snoozelogo.jpeg" alt="" width="300" height="250">

    </div>

    <!-- email form -->
    <div class="form-label-group text-center main">
        <input id="inputEmail" name="email" type="email" placeholder="Email Address" required autofocus
               ng-model="users.inputEmail" style="width: 40%">
    </div>



    <br>

    <!-- <div class="form-element-wrapper"> -->
    <!-- <div class="text-center mb-2"style="display: flex; justify-content: center;" > -->
    <!-- password form -->
    <div class="form-label-group text-center main">

        <input id="inputPassword" name="password" type="password" placeholder="Password"  required autofocus
               ng-model="users.inputPassword" style="width: 40%">

    </div>

    <br>
    <!--remember me choosing -->
    <div class="checkbox mb-3 text-center">

        <input type="checkbox" value="remember-me"> Remember me

    </div>

    <!--log in button -->
    <!--<div class="col-md-6 col-md-offset-3" style="display: flex;-->
    <!--justify-content: center;">-->

    <!--<button class="btn btn-lg btn-primary btn-block" "sc-gisBJw blYhWW sc-fMiknA jCrtVn" align-items=""center type="submit" style="width: 40%">Log-->
    <!--In-->
    <!--</button>-->
    <!--</div>-->

    <button class="btn btn-lg btn-primary"  id="login-submit" spacing="default" type="submit" ng-click="submitForm()">
        <span style="align-self: center; display: inline-flex; flex-wrap: nowrap; max-width: 100%; position: relative; width: 150%; justify-content: center;">
            <span style="align-items: center; align-self: center; flex: 1 1 auto; margin: 0px 4px; max-width: 150%; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;
                  transition: opacity 0.3s ease 0s; opacity: 1;">
                <span>Sign In</span>
                </span>
        </span>
    </button>


    <br>
    <br/>

    <!-- a link for sign up page -->
    <ul class="list-help text-center" >
        <a href="http://localhost:8080/reg_page.jsp">Don't have account?</a >
    </ul>

    <br>
    <br/>
    <div class="mt-5 mb-3 text-muted text-center">
        <p>&copy; 2017-2018</p >
    </div>

</form>
<script>
    var app = angular.module('myApp',[]);
    app.controller('loginController',function ($scope,$http) {
        $scope.users = {};

        $scope.submitForm = function () {
            // console.log('enter submitForm');
            $http({
                method:'post',
                url:'/snooze/login',
                params:{
                    "inputEmail":$scope.users.inputEmail,
                    "inputPassword":$scope.users.inputPassword,
                    "resp":$scope.resp

                },

                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
                // transformRequest: function (params) {
                //     return $.param(params);
                // }
            }).then(function(resp){
                if (resp.data === "true"){
                    console.log(resp.data);
                    alert("Signin Success");
                    window.location.href="http://localhost:8080/login_page.jsp";



                }else if(resp.data === "false") {
                    console.log('Email or Passowrd Error');
                    alert("Email or Passoword error");
                }


            });
        }
    });
</script>




<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="jquery/jquery-3.2.1.js"></script>
<script src="bootstrap/js/bootstrap.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>

</body>
</html>