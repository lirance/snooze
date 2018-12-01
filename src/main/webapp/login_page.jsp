<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>


<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


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
<script src="js/ui_router.js"></script>


<br/>
<br/>
<br/>

<br/>
<div ui-view></div>
<!--   login form -->
<form class="form-signin text-center" ng-app="myApp" ng-controller="loginController">

    <!--    snooze logo picture -->
    <div class="text-center mb-2">

        <img src="imgs/snoozelogo.jpeg" alt="" width="300" height="250">

    </div>

    <!-- email form -->
    <div class="form-label-group text-center main">
        <label>Email&nbspAddress:</label>
        <input id="inputEmail" name="email" type="email" required autofocus
               ng-model="users.inputEmail" style="width: 40%">
    </div>


    <br>

    <!-- <div class="form-element-wrapper"> -->
    <!-- <div class="text-center mb-2"style="display: flex; justify-content: center;" > -->
    <!-- password form -->
    <div class="form-label-group text-center main">
        <label>&nbsp&nbsp&nbsp Password &nbsp&nbsp:</label>

        <input id="inputPassword" name="password" type="password"  required autofocus
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

    <button class="btn btn-lg btn-primary" id="login-submit" spacing="default" type="submit" ng-click="submitForm()">
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
    <ul class="list-help text-center">
        <a href="http://localhost:8080/reg_page.jsp">Don't have account?</a>
    </ul>

    <br>
    <br/>
    <div class="mt-5 mb-3 text-muted text-center">
        <p>&copy; 2016-2017</p>
    </div>

</form>
<script src="js/login_conlor.js"></script>



<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="jquery/jquery-3.2.1.js"></script>
<script src="Popper.js"></script>
<script src="bootstrap/js/bootstrap.js"></script>


</body>
</html>