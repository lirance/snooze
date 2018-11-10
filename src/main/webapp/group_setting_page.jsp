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

    <title>Group Setting Page </title>


</head>

<body ng-app="groupSetApp" ng-controller="showGroupCtrl">
<script src="angularjslab.js"></script>
<script src="js/ui_router.js"></script>

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
                                <a href="" style="background-color: #0056b3"
                                   class="list-group-item">

                                    <span class="oi oi-project" title="project" aria-hidden="true"></span>
                                    <span class="d-none d-inline">Group</span>
                                </a>

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


        <main class="col-md-9 float-left col px-5 pl-md-2 pt-2 main">
            <a href="#" data-target="#sidebar" data-toggle="collapse"><i class="fa fa-navicon fa-2x py-2 p-1"></i></a>
            <div class="page-header">
                <h2>Group Setting</h2>
            </div>
            <hr>

            <from>
                <div class="col-md-8 order-md-1">


                    <div class="row">
                        <!--  botton -->
                        <div class="col-md-6 mb-3">

                            <br>

                            <a href="join_group.jsp" class="btn btn-success btn-lg"
                               style="width:80%" role="button" aria-disabled="true"> Join</a>


                        </div>

                        <!--  botton -->
                        <div class="col-md-6 mb-3">
                            <br>

                            <a href="create_Group_page.jsp" class="btn btn-success btn-lg"
                               style="width:80%" role="button" aria-disabled="true"> Create</a>

                        </div>
                        <br>

                        <br>
                    </div>
                </div>
            </from>

            <br>
            <br>

            <p>The Group You Joined___Member</p>

            <table class="table table-striped">
                <thead>
                <tr>
                    <th >Group Name</th>
                    <th>Group ID</th>
                </tr>
                </thead>
                <tbody>
                <tr>

                        <tr ng-repeat="group in Ggroup ">
                        <td ng-click="passGgroupID(group.groupId)">
                            {{group.groupName }}
                        </td>
                        <td ng-click="passGroupID(group.groupId)">
                            {{group.groupId}}
                        </td>

                </tr>

                </tr>


                </tbody>
            </table>


            <br>


            <p>The Group You Created___Manger</p>


            <table class="table table-striped">
                <thead>
                <tr>
                    <th>Group Name</th>
                    <th>Group ID</th>
                </tr>
                </thead>
                <tbody>
                <!--example-->
                <div>
                    <tr ng-repeat="group in Mgropus " >
                        <td ng-click="passMgroupID(group.groupId)">{{group.groupName }}</td>
                        <td ng-click="passMgroupID(group.groupId)">{{group.groupId }}</td>

                    </tr>
                </div>

                </tbody>
            </table>

            <hr>


        </main>

    </div>
</div>

<script src="js/group_setting.js"></script>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="jquery/jquery-3.2.1.js"></script>
<script src="js/Popper.js"></script>
<script src="bootstrap/js/bootstrap.js"></script>
</body>
</html>