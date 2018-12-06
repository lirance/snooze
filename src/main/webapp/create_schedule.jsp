<%--
  Created by IntelliJ IDEA.
  User: yin
  Date: 11/12/18
  Time: 4:28 PM
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
    <link rel="stylesheet" href="bootstrap/css/sidebar.css">
    <link href="open-iconic/font/css/open-iconic-bootstrap.css" rel="stylesheet">

    <title>Create Group</title>

</head>


<body ng-app="scheduleApp" ng-controller="createScheduleCtrl">
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
                                    <span class="d-none d-inline">Group</span>
                                </a>
                                <ul class="collapse list-unstyled" id="homeSubmenu">
                                    <li>
                                        <a href="#" class="list-group-item list-group-item-action"
                                           data-parent="#sidebar">
                                            <span class="oi oi-people" title="people" aria-hidden="true"></span>
                                            </span>
                                            Group Member
                                        </a>
                                    </li>
                                </ul>
                            </li>

                            <li class="active">
                                <a href="#homeSubmenu1" data-toggle="collapse" aria-expanded="false"
                                   class="list-group-item dropdown-toggle">

                                    <span class="oi oi-folder" title="folder" aria-hidden="true"></span>
                                    <span class="d-none d-inline">Schedule</span>
                                </a>
                                <ul class="collapse list-unstyled show" id="homeSubmenu1">
                                    <li>
                                        <a href="#" class="list-group-item list-group-item-action"
                                           data-parent="#sidebar"style="background-color: #80bdff">
                                            <span class="oi oi-browser" title="browser" aria-hidden="true"></span>
                                            </span>
                                            Current Using
                                        </a>
                                    </li>

                                    <li>
                                        <a href="#" class="list-group-item list-group-item-action"
                                           data-parent="#sidebar">
                                            <span class="oi oi-paperclip" title="paperclip" aria-hidden="true"></span>
                                            </span>
                                            Already Produce
                                        </a>
                                    </li>
                                </ul>
                            </li>

                            <li class="active">

                                <a href="#" data-toggle="collapse"
                                   class="list-group-item">
                                    <span class="oi oi-cog" title="cog" aria-hidden="true"></span>
                                    <span class="d-none d-inline"></span>
                                </a>
                            <li>


                        </ul>
                    </nav>

                </div>
            </div>

        </div>


        <from class="form-signin" ng-controller="createScheduleCtrl">
            <main class="col-md-8 float-left col px-3 pl-md-5 pt-3 main">
                <a href="#" data-target="#sidebar" data-toggle="collapse"><i
                        class="fa fa-navicon fa-2x py-2 p-1"></i></a>
                <div class="page-header">
                    <h2>Create Schedule</h2>
                </div>
                <hr>


                <br>

                <label for="schName">Enter the schedule name</label>
                <br>
                <br>
                <input type="text" class="form-control" id="schName" placeholder="" value="" required autofocus
                       ng-model="users.inputScheduleName" style="width:70%">






                <div class="col-md-8 order-md-1">


                    <div class="row">
                        <!-- Save botton -->
                        <div class="col-md-6 mb-3">
                            <br>
                            <br>
                            <br>

                            <a href="group_setting_page.jsp" class="btn btn-success btn-lg"
                               style="width:80%" role="button" aria-disabled="true" ng-click="submitForm()">Submit</a>

                        </div>


                        <!-- Clean botton -->
                        <div class="col-md-6 mb-3">
                            <br>
                            <br>
                            <br>
                            <button class="btn btn-lg btn-success btn-block " style="width: 80%" align="center"
                                    type="reset" value="Reset" >Clean
                            </button>
                        </div>
                        <br>
                        <br>
                    </div>
                </div>

            </main>
        </from>
    </div>

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