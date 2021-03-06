<%--
  Created by IntelliJ IDEA.
  User: yin
  Date: 11/17/18
  Time: 3:24 PM
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

    <title> Schedule Page</title>


</head>

<body ng-app="scheduleApp" ng-controller="">
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

                                <a href="#"
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
                                           data-parent="#sidebar" style="background-color: #80bdff">
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

                                <a href="#"
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
                <h2>Current Using Schedule (Manger)</h2>
            </div>
            <hr>
            <from>
                <div class="container">
                    <div class="row">
                        <div class="col-lg">
                        </div>
                        <div class="col-lg">
                        </div>
                        <div class="col-lg">


                            <a href="#" class="btn btn-success btn-lg"
                               style="width:80%" role="button" aria-disabled="true"> Create New</a>


                        </div>

                    </div>
                </div>
                <br>
                <br>
                <br>


            </from>


            <h4> Schedule </h4>

            <from>

                <table class="table table-stripe">
                    <thead>
                    <br>
                    <th>Time</th>
                    <th>Monday</th>
                    <th>Tuesday</th>
                    <th>Wednesday</th>
                    <th>Thursday</th>
                    <th>Friday</th>
                    <th>Saturday</th>
                    <th>Sunday</th>
                    </tr>


                    <tr class="table-primary">


                    </thead>
                    <tbody>
                    <tr>
                        <td>
                            8:00-9:00
                        </td>
                        <!--should be 7 username in here-MTWTFSS-->
                        <td>
                            <output type="Username" id="Username1"></output>
                        </td>

                        <!--<td>-->
                        <!--<output type="Username" id="Username2"></output>-->
                        <!--</td>-->
                        <!---->
                    </tr>
                    <tr>
                        <td>
                            9:00-10:00
                        </td>


                        <!--<td>-->
                        <!--<output type="Username" id="Username2"></output>-->
                        <!--</td>-->
                        <!---->

                    </tr>

                    <tr>
                        <td>
                            10:00-11:00
                        </td>


                        <!--<td>-->
                        <!--<output type="Username" id="Username2"></output>-->
                        <!--</td>-->
                        <!---->
                    </tr>

                    <tr>
                        <td>
                            11:00-12:00
                        </td>

                        <!--<td>-->
                        <!--<output type="Username" id="Username2"></output>-->
                        <!--</td>-->
                        <!---->
                    </tr>

                    <tr>
                        <td>
                            12:00-13:00
                        </td>

                        <!--<td>-->
                        <!--<output type="Username" id="Username2"></output>-->
                        <!--</td>-->
                        <!---->
                    </tr>

                    <tr>
                        <td>
                            13:00-14:00
                        </td>

                        <!--<td>-->
                        <!--<output type="Username" id="Username2"></output>-->
                        <!--</td>-->
                        <!---->
                    </tr>

                    <tr>
                        <td>
                            14:00-15:00
                        </td>

                        <!--<td>-->
                        <!--<output type="Username" id="Username2"></output>-->
                        <!--</td>-->
                        <!---->
                    </tr>


                    <tr>
                        <td>
                            15:00-16:00
                        </td>

                        <!--<td>-->
                        <!--<output type="Username" id="Username2"></output>-->
                        <!--</td>-->
                        <!---->
                    </tr>


                    <tr>
                        <td>
                            16:00-17:00
                        </td>

                        <!--<td>-->
                        <!--<output type="Username" id="Username2"></output>-->
                        <!--</td>-->
                        <!---->
                    </tr>

                    <tr>
                        <td>
                            18:00-19:00
                        </td>

                        <!--<td>-->
                        <!--<output type="Username" id="Username2"></output>-->
                        <!--</td>-->
                        <!---->
                    </tr>


                    </tbody>
                </table>


                <br>


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