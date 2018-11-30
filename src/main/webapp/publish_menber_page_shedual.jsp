<%--
  Created by IntelliJ IDEA.
  User: yin
  Date: 11/24/18
  Time: 6:11 PM
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

    <title> Publish Schedule For Member </title>

</head>


<body ng-app="scheduleApp" ng-controller="saveSchedule">

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
                                    <%--<li>--%>
                                        <%--<a href="current_schedule_member_page.jsp" class="list-group-item list-group-item-action">--%>
                                            <%--<span class="oi oi-circle-check" title="circle-check"--%>
                                                  <%--aria-hidden="true"></span>--%>
                                            <%--Current Choosing--%>
                                        <%--</a>--%>

                                    <%--</li>--%>
                                    <li ng-click="show()">
                                        <div ng-click="show()" class="list-group-item list-group-item-action"
                                             data-parent="#sidebar" >
                                            <div ng-click="show()" class="oi oi-paperclip" title="paperclip" aria-hidden="true"></div>
                                            Already Produce
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
                    <h2>Published Schedule (Member)</h2>
                </div>
                <hr>


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

                        <td>
                            ${sessionScope.scheduleMap.index8.time108.userName}
                        </td>
                        <td>
                            ${sessionScope.scheduleMap.index8.time208.userName}
                        </td>
                        <td>
                            ${sessionScope.scheduleMap.index8.time308.userName}
                        </td>
                        <td>
                            ${sessionScope.scheduleMap.index8.time408.userName}
                        </td>
                        <td>
                            ${sessionScope.scheduleMap.index8.time508.userName}
                        </td>
                        <td>
                            ${sessionScope.scheduleMap.index8.time608.userName}
                        </td>
                        <td>
                            ${sessionScope.scheduleMap.index8.time708.userName}
                        </td>

                    </tr>


                    <tr>
                        <td>
                            9:00-10:00
                        </td>

                        <td>
                            ${sessionScope.scheduleMap.index9.time109.userName}
                        </td>
                        <td>
                            ${sessionScope.scheduleMap.index9.time209.userName}
                        </td>
                        <td>
                            ${sessionScope.scheduleMap.index9.time309.userName}
                        </td>
                        <td>
                            ${sessionScope.scheduleMap.index9.time409.userName}
                        </td>
                        <td>
                            ${sessionScope.scheduleMap.index9.time509.userName}
                        </td>
                        <td>
                            ${sessionScope.scheduleMap.index9.time609.userName}
                        </td>
                        <td>
                            ${sessionScope.scheduleMap.index9.time709.userName}
                        </td>
                    </tr>
                    <tr>
                        <td>
                            10:00-11:00
                        </td>
                        <td>
                            ${sessionScope.scheduleMap.index10.time110.userName}
                        </td>
                        <td>
                            ${sessionScope.scheduleMap.index10.time210.userName}
                        </td>
                        <td>
                            ${sessionScope.scheduleMap.index10.time310.userName}
                        </td>
                        <td>
                            ${sessionScope.scheduleMap.index10.time410.userName}
                        </td>
                        <td>
                            ${sessionScope.scheduleMap.index10.time510.userName}
                        </td>
                        <td>
                            ${sessionScope.scheduleMap.index10.time610.userName}
                        </td>
                        <td>
                            ${sessionScope.scheduleMap.index10.time710.userName}
                        </td>
                    </tr>
                    <tr>
                        <td>
                            11:00-12:00
                        </td>

                        <td>
                            ${sessionScope.scheduleMap.index11.time111.userName}
                        </td>
                        <td>
                            ${sessionScope.scheduleMap.index11.time211.userName}
                        </td>
                        <td>
                            ${sessionScope.scheduleMap.index11.time311.userName}
                        </td>
                        <td>
                            ${sessionScope.scheduleMap.index11.time411.userName}
                        </td>
                        <td>
                            ${sessionScope.scheduleMap.index11.time511.userName}
                        </td>
                        <td>
                            ${sessionScope.scheduleMap.index11.time611.userName}
                        </td>
                        <td>
                            ${sessionScope.scheduleMap.index11.time711.userName}
                        </td>
                    </tr>
                    <tr>
                        <td>
                            12:00-13:00
                        </td>
                        <td>
                            ${sessionScope.scheduleMap.index12.time112.userName}
                        </td>
                        <td>
                            ${sessionScope.scheduleMap.index12.time212.userName}
                        </td>
                        <td>
                            ${sessionScope.scheduleMap.index12.time312.userName}
                        </td>
                        <td>
                            ${sessionScope.scheduleMap.index12.time412.userName}
                        </td>
                        <td>
                            ${sessionScope.scheduleMap.index12.time512.userName}
                        </td>
                        <td>
                            ${sessionScope.scheduleMap.index12.time612.userName}
                        </td>
                        <td>
                            ${sessionScope.scheduleMap.index12.time712.userName}
                        </td>
                    </tr>
                    <tr>
                        <td>
                            13:00-14:00
                        </td>
                        <td>
                            ${sessionScope.scheduleMap.index13.time113.userName}
                        </td>
                        <td>
                            ${sessionScope.scheduleMap.index13.time213.userName}
                        </td>
                        <td>
                            ${sessionScope.scheduleMap.index13.time313.userName}
                        </td>
                        <td>
                            ${sessionScope.scheduleMap.index13.time413.userName}
                        </td>
                        <td>
                            ${sessionScope.scheduleMap.index13.time513.userName}
                        </td>
                        <td>
                            ${sessionScope.scheduleMap.index13.time613.userName}
                        </td>
                        <td>
                            ${sessionScope.scheduleMap.index13.time713.userName}
                        </td>
                    </tr>

                    <tr>
                        <td>
                            14:00-15:00
                        </td>
                        <td>
                            ${sessionScope.scheduleMap.index14.time114.userName}
                        </td>
                        <td>
                            ${sessionScope.scheduleMap.index14.time214.userName}
                        </td>
                        <td>
                            ${sessionScope.scheduleMap.index14.time314.userName}
                        </td>
                        <td>
                            ${sessionScope.scheduleMap.index14.time414.userName}
                        </td>
                        <td>
                            ${sessionScope.scheduleMap.index14.time514.userName}
                        </td>
                        <td>
                            ${sessionScope.scheduleMap.index14.time614.userName}
                        </td>
                        <td>
                            ${sessionScope.scheduleMap.index14.time714.userName}
                        </td>

                    </tr>


                    <tr>
                        <td>
                            15:00-16:00
                        </td>
                        <td>
                            ${sessionScope.scheduleMap.index15.time115.userName}
                        </td>
                        <td>
                            ${sessionScope.scheduleMap.index15.time215.userName}
                        </td>
                        <td>
                            ${sessionScope.scheduleMap.index15.time315.userName}
                        </td>
                        <td>
                            ${sessionScope.scheduleMap.index15.time415.userName}
                        </td>
                        <td>
                            ${sessionScope.scheduleMap.index15.time515.userName}
                        </td>
                        <td>
                            ${sessionScope.scheduleMap.index15.time615.userName}
                        </td>
                        <td>
                            ${sessionScope.scheduleMap.index15.time715.userName}
                        </td>

                    </tr>


                    <tr>
                        <td>
                            16:00-17:00
                        </td>
                        <td>
                            ${sessionScope.scheduleMap.index16.time116.userName}
                        </td>
                        <td>
                            ${sessionScope.scheduleMap.index16.time216.userName}
                        </td>
                        <td>
                            ${sessionScope.scheduleMap.index16.time316.userName}
                        </td>
                        <td>
                            ${sessionScope.scheduleMap.index16.time416.userName}
                        </td>
                        <td>
                            ${sessionScope.scheduleMap.index16.time516.userName}
                        </td>
                        <td>
                            ${sessionScope.scheduleMap.index16.time616.userName}
                        </td>
                        <td>
                            ${sessionScope.scheduleMap.index16.time716.userName}
                        </td>

                    </tr>

                    <tr>
                        <td>
                            17:00-18:00
                        </td>
                        <td>
                            ${sessionScope.scheduleMap.index17.time117.userName}
                        </td>
                        <td>
                            ${sessionScope.scheduleMap.index17.time217.userName}
                        </td>
                        <td>
                            ${sessionScope.scheduleMap.index17.time317.userName}
                        </td>
                        <td>
                            ${sessionScope.scheduleMap.index17.time417.userName}
                        </td>
                        <td>
                            ${sessionScope.scheduleMap.index17.time517.userName}
                        </td>
                        <td>
                            ${sessionScope.scheduleMap.index17.time617.userName}
                        </td>
                        <td>
                            ${sessionScope.scheduleMap.index17.time717.userName}
                        </td>

                    </tr>

                    <tr>
                        <td>
                            18:00-19:00
                        </td>
                        <td>
                            ${sessionScope.scheduleMap.index18.time118.userName}
                        </td>
                        <td>
                            ${sessionScope.scheduleMap.index18.time218.userName}
                        </td>
                        <td>
                            ${sessionScope.scheduleMap.index18.time318.userName}
                        </td>
                        <td>
                            ${sessionScope.scheduleMap.index18.time418.userName}
                        </td>
                        <td>
                            ${sessionScope.scheduleMap.index18.time518.userName}
                        </td>
                        <td>
                            ${sessionScope.scheduleMap.index18.time618.userName}
                        </td>
                        <td>
                            ${sessionScope.scheduleMap.index18.time718.userName}
                        </td>

                    </tr>


                    </tbody>
                </table>


                <br>

                <div class="col-md-6 mb-3">

                    <br>

                    <a href="create_schedule.jsp" class="btn btn-success btn-lg"
                       style="width:80%" role="button" aria-disabled="true"> Create New</a>


                </div>


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