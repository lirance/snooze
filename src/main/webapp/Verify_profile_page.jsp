<%--
  Created by IntelliJ IDEA.
  User: yin
  Date: 11/1/18
  Time: 4:03 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
    <link href="open-iconic/font/css/open-iconic-bootstrap.css" rel="stylesheet">
    <link rel="stylesheet"  href="bootstrap/css/sidebar.css">
    <title>Verify Password Page</title>

</head>


<body ng-app="mainVefiApp" ng-controller="VerifyCtrl">
<script src="angularjslab.js"></script>

<div class="container-fluid">
    <div class="row d-flex d-md-block flex-nowrap wrapper">
        <div class="col-md-3 float-left col-1 pl-0 pr-0 collapse width show">
            <div class="list-group border-0 card text-center text-md-left">

                <div class="wrapper">
                    <!-- Sidebar --->
                    <nav id="sidebar">
                        <ul class="list-unstyled components">
                            <li class="active">

                                <a href="main_page.jsp"
                                   class="list-group-item">
                                    <span class="oi oi-home" title="home" aria-hidden="true"></span>
                                    <span class="d-none d-inline">Main Page</span>
                                </a>
                            <li>

                            <li class="active">

                                <a href="Verify_profile_page.jsp"
                                   class="list-group-item" style="background-color: #0056b3">
                                    <span class="oi oi-person" title="person" aria-hidden="true"></span>
                                    <span class="d-none d-inline">Edit Profile</span>
                                </a>
                            <li>


                            <li class="active">
                                <a href="group_setting_page.jsp"
                                   class="list-group-item">
                                    <span class="oi oi-project" title="project" aria-hidden="true"></span>
                                    <span class="d-none d-inline">Group</span>
                                </a>

                            </li>
                            <li class="active">

                                <a href="login_page.jsp"
                                   class="list-group-item">
                                    <span class="oi oi-account-logout" title="log" aria-hidden="true"></span>
                                    <span class="d-none d-inline">Log Out</span>
                                </a>
                            <li>


                        </ul>
                    </nav>

                </div>
            </div>

        </div>


        <main class="col-md-8 float-left col px-3 pl-md-5 pt-3 main">
            <a href="#" data-target="#sidebar" data-toggle="collapse"><i class="fa fa-navicon fa-2x py-2 p-1"></i></a>
            <div class="page-header">
                <h2>Please verify your original password</h2>
            </div>
            <hr>

            <form class="form-verify" ng-app="mainVefiApp" ng-controller="VerifyCtrl">

            <label for="outputEmail">Default Email Address</label>

            <output type="email" id="outputEmail" class="form-control" required
                   autofocus style="width:70%">
                ${sessionScope.user.eMail}
                </output>



            <br>

            <label for="inputPassword">Original Password</label>
            <input type="password" id="inputPassword" class="form-control" placeholder="" required
                   ng-model="users.inputPassword" style="width:70%" >


            <div class="col-md-8 order-md-1">


                <div class="row">
                    <!-- Save botton -->
                    <div class="col-md-6 mb-3">
                        <br>
                        <br>
                        <br>
                        <button class="btn btn-lg btn-primary btn-block" style="width: 80%" align="center"
                                type="submit" ng-click="submitForm()">Submit
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
                    <br>

                    <br>
                </div>
            </div>
            </form>

        </main>
    </div>
</div>
<script src="js/Verify_pass_user_info.js"></script>

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="jquery/jquery-3.2.1.js"></script>
<script src="js/Popper.js"></script>
<script src="bootstrap/js/bootstrap.js"></script>


</body>
</html>