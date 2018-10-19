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


    <title>Login_page</title>
</head>




<body ng-app="myApp">
<script src="angularjslab.js"></script>
<header>
    <!--  -->
    <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
        <a class="navbar-brand" href="#">SNOOZE</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Link</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link disabled" href="#">Disabled</a>
                </li>
            </ul>
            <!-- <form class="form-inline mt-2 mt-md-0">
              <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
              <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
            </form> -->

            <span>
          <li class="nav-item dropdown" navbar-light>
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              Options
            </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
              <a class="dropdown-item" href="#">Sign in</a>
              <a class="dropdown-item" href="#">Register</a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="#">Logout</a>
          </div>
          </li>
        </span>
        </div>
    </nav>
</header>

<br/><br/><br/><br/><br/>






<!--   login form -->
<form class="form-signin text-center" ng-submit="submitForm()" ng-controller="loginController">
    <div class="text-center mb-4">
        <img class="mb-4" src="imgs/s_logo.png" alt="" width="72" height="72">
        <h1 class="h3 mb-3 font-weight-normal">Please Log in</h1>
    </div>

    <div class="form-label-group text-center main">
        <input type="email" id="inputEmail" class="form-control " placeholder="Email address" required autofocus ng-model="users.email" >
        <label for="inputEmail">Email address</label>
    </div>

    <div class="form-label-group">
        <input type="password" id="inputPassword" class="form-control" placeholder="Password" required ng-model="users.password">
        <label for="inputPassword">Password</label>
    </div>

    <!-- <div class="form-label-group">
      <input type="userid" id="inputUseID" class="form-control" placeholder="UserID" required ng-model="user.userid">
      <label for="inputPassword">UserID</label>
    </div> -->

    <div class="checkbox mb-3">
        <label>
            <input type="checkbox" value="remember-me"> Remember me
        </label>
    </div>
    <button class="btn btn-lg btn-primary btn-block" type="submit">Log in</button>
    <p class="mt-5 mb-3 text-muted text-center">&copy; 2017-2018</p>
</form>


<script>
    var app = angular.module("myApp",[]);
    app.controller('loginController',function ($scope,$http) {
        $scope.user = {};
        $scope.submitForm = function () {
            // console.log('enter submitForm');
            $http({
                method:'post',
                url:'',
                data:$.param($scope.users),
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                },
                transformRequest: function (data) {
                    return $.param(data);
                }
            }).then(function(data){
                console.log('Login success',data);




            }).then(function(resp){
                console.log('Email or Passowrd Error');
                console.log(resp);
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