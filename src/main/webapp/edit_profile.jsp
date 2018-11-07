<%--
  Created by IntelliJ IDEA.
  User: yin
  Date: 11/1/18
  Time: 4:12 PM
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

    <title>Personal Main Page</title>

</head>

<script src="angularjslab.js"></script>
<script src="js/ui_router.js"></script>
<body ng-app="editProApp" ng-controller="editProController">


<div class="container-fluid">
    <div class="row d-flex d-md-block flex-nowrap wrapper">
        <div class="col-md-3 float-left col-1 pl-0 pr-0 collapse width show">
            <div class="list-group border-0 card text-center text-md-left">

                <div class="wrapper">
                    <!-- Sidebar --->
                    <nav id="sidebar">
                        <ul class="list-unstyled components">

                            <li class="active">

                                <a href="#" data-toggle="collapse"
                                   class="list-group-item">
                                    <span class="oi oi-person" title="person" aria-hidden="true"></span>
                                    <span class="d-none d-inline">Edit Profile</span>
                                </a>
                            <li>

                            <li class="active">
                                <a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false"
                                   class="list-group-item dropdown-toggle">

                                    <span class="oi oi-project" title="project" aria-hidden="true"></span>
                                    <span class="d-none d-inline">Group Setting</span>
                                </a>
                                <ul class="collapse list-unstyled" id="homeSubmenu">
                                    <li>
                                        <a href="#" class="list-group-item list-group-item-action"
                                           data-parent="#sidebar">
                                            <span class="oi oi-calendar" title="calender" aria-hidden="true"></span>
                                            Already Choosed
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" class="list-group-item list-group-item-action">
                                            <span class="oi oi-circle-check" title="circle-check"
                                                  aria-hidden="true"></span>
                                            Current Choosing
                                        </a>

                                    </li>
                                    <li>
                                        <a href="#" class="list-group-item list-group-item-action">
                                            <span class="oi oi-cog" title="cog" aria-hidden="true"></span>
                                            Group Setting
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



        <form class="form-verify" ng-app="editProApp" ng-controller="editProController">
        <main class="col-md-8 float-left col px-3 pl-md-5 pt-3 main">
            <a href="#" data-target="#sidebar" data-toggle="collapse"><i class="fa fa-navicon fa-2x py-2 p-1"></i></a>
            <div class="page-header">
                <h2>Verification passed！
                    Now you can edit your profile</h2>
            </div>
            <hr>

            <label for="outPutEmail">Default Email Address</label>




            <output type="email" id="outPutEmail" class="form-control" required
                    autofocus style="width:70%">
                    ${sessionScope.user.eMail}
            </output>


            <br>

            <label for="UserName">Change UserName</label>
            <input type="text" class="form-control" id="UserName" placeholder="" value="" required autofocus
                   ng-model="users.inputUsername" style="width:70%">


            <br>


            <!-- Email and password   -->



            <label for="inputPassword">Change Password</label>
            <input type="password" id="inputPassword" class="form-control"
                   ng-model="users.inputPassword" style="width:70%">



            <br>


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

        </main>
        </form>
    </div>
</div>
<script src="js/main_page_edit.js"></script>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="jquery/jquery-3.2.1.js"></script>
<script src="js/Popper.js"></script>
<script src="bootstrap/js/bootstrap.js"></script>


</body>
</html>






