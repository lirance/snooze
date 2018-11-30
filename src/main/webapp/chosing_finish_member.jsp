<%--
  Created by IntelliJ IDEA.
  User: yin
  Date: 11/27/18
  Time: 10:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>


<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>




<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="bootstrap/css/sidebar.css">
    <link href="open-iconic/font/css/open-iconic-bootstrap.css" rel="stylesheet">

    <title> Current Schedule For Member </title>

</head>


<body ng-app="scheduleApp">

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
                                   class="list-group-item">
                                    <span class="oi oi-person" title="person" aria-hidden="true"></span>
                                    <span class="d-none d-inline">Edit Profile</span>
                                </a>
                            <li>

                            <li class="active">
                                <a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false"
                                   class="list-group-item dropdown-toggle">

                                    <span class="oi oi-project" title="project" aria-hidden="true"></span>
                                    <span class="d-none d-inline">Schedule</span>
                                </a>
                                <ul class="collapse list-unstyled show" id="homeSubmenu">
                                    <li>
                                        <a href="#" class="list-group-item list-group-item-action"
                                           style="background-color: #80bdff">
                                            <span class="oi oi-circle-check" title="circle-check"
                                                  aria-hidden="true"></span>
                                            Current Choosing
                                        </a>

                                    </li>
                                    <li ng-controller="showPersonCtrl">
                                        <div ng-click="show()" class="list-group-item list-group-item-action">
                                            <span  ng-click="show()" class="oi oi-flag" title="flag"
                                                  aria-hidden="true"></span>
                                            Published
                                        </div>
                                    </li>
                                </ul>

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

        <from>
            <main class="col-md-8 float-left col px-3 pl-md-5 pt-3 main">
                <a href="#" data-target="#sidebar" data-toggle="collapse"><i
                        class="fa fa-navicon fa-2x py-2 p-1"></i></a>
                <div class="page-header">
                    <h4>Congratulations, you have successfully selected the class.</h4>
                </div>
                <hr>


                <br>


                <br>
                <br>
                <br>
                <from>
                    <div class="container">
                        <div class="row">
                            <div class="col-lg">

                                <!--<a href="#" class="btn btn-success btn-lg"-->
                                <!--style="width:80%" role="button" aria-disabled="true"> Back</a>-->
                            </div>
                            <div class="col-lg">

                            </div>

                            <div class="col-md" ng-controller="selectTimeCtrl">

                                <a href="current_schedule_member_page.jsp" class="btn btn-success btn-md"
                                   style="width:80%" role="button" aria-disabled="true" ng-click="show()"> ReChoose</a>


                            </div>

                        </div>
                    </div>

                </from>


            </main>

        </from>
    </div>
</div>
<script src="js/schedual_seeting.js"></script>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="jquery/jquery-3.2.1.js"></script>
<script src="js/Popper.js"></script>
<script src="bootstrap/js/bootstrap.js"></script>


</body>
</html>