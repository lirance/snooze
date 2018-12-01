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

    <title>End Choosing Page</title>


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

                                <a href="edit_profile.jsp"
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
                                        <a href="member_list_manger_page.jsp" class="list-group-item list-group-item-action"
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
                                        <a href="end_choosing_schedule_manager.jsp" class="list-group-item list-group-item-action"
                                           data-parent="#sidebar" style="background-color: #80bdff">
                                            <span class="oi oi-browser" title="browser" aria-hidden="true"></span>
                                            </span>
                                            Current Using
                                        </a>
                                    </li>

                                    <%--<li ng-click="show()">--%>
                                        <%--<div ng-click="show()" class="list-group-item list-group-item-action"--%>
                                             <%--data-parent="#sidebar" >--%>
                                            <%--<div ng-click="show()" class="oi oi-paperclip" title="paperclip" aria-hidden="true"></div>--%>
                                            <%--Already Produce--%>
                                        <%--</div>--%>
                                    <%--</li>--%>
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

        <main class="col-md-9 float-left col px-5 pl-md-2 pt-2 main">
            <a href="#" data-target="#sidebar" data-toggle="collapse"><i class="fa fa-navicon fa-2x py-2 p-1"></i></a>
            <div class="page-header">
                <h2>End Choosing </h2>
            </div>

            <hr>
            <br>

            <h4>Unfinished People</h4>


            <table class="table table-striped" ng-controller="getUnfinishedCtrl">
                <thead>
                <br>
                <tr>
                    <th>User Name</th>
                    <th>Email Address</th>
                </tr>
                </thead>
                <tbody>
                <tr ng-repeat="unChoosedPeople in NotChoosed">

                        <td>
                            {{unChoosedPeople.userName}}

                        </td>
                        <td>
                            {{unChoosedPeople.eMail}}

                        </td>


                </tr>




                </tbody>
            </table>


            <br>


            <from ng-controller="endCtrl">


                <div class="container">
                    <div class="row">
                        <div class="col-lg">

                            <a href="member_list_manger_page.jsp" class="btn btn-success btn-lg"
                               style="width:80%" role="button" aria-disabled="true">Back</a>

                        </div>
                        <div class="col-lg">
                        </div>
                        <div class="col-lg">

                            <button class="btn btn-lg btn-warning btn-block" style="width: 80%" align="center"
                                    type="submit" ng-click="submitForm()">End
                            </button>



                        </div>

                    </div>
                </div>
            </from>



        </main>
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