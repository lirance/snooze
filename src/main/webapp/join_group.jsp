<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="bootstrap/css/sidebar.css">
    <link href="open-iconic/font/css/open-iconic-bootstrap.css" rel="stylesheet">

    <title>Join Group</title>

</head>


<body ng-app="groupSetApp" ng-controller="joinGroupCtrl">
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

        <from class="form-showGroup" ng-app="groupSetApp" ng-controller="joinGroupCtrl">
            <main class="col-md-8 float-left col px-3 pl-md-5 pt-3 main">
                <a href="join_group.jsp" data-target="#sidebar" data-toggle="collapse"><i class="fa fa-navicon fa-2x py-2 p-1"></i></a>
                <div class="page-header">
                    <h2>Join Group</h2>
                </div>
                <hr>


                <br>

                <label for="GroupID">Enter the group ID</label>
                <input type="text" class="form-control" id="GroupID" placeholder="" value="" required autofocus
                       ng-model="users.inputGroupId" style="width:70%">


                <br>


                <div class="col-md-8 order-md-1">


                    <div class="row">
                        <!-- Save botton -->
                        <div class="col-md-6 mb-3">
                            <br>
                            <br>
                            <br>
                            <button class="btn btn-lg btn-success btn-block" style="width: 80%" align="center"
                                    type="submit" ng-click="submitForm()">Join
                            </button>
                        </div>


                        <!-- Clean botton -->
                        <div class="col-md-6 mb-3">
                            <br>
                            <br>
                            <br>
                            <button class="btn btn-lg btn-success btn-block " style="width: 80%" align="center"
                                    type="reset" value="Reset">Clean</button>
                        </div>
                        <br>
                        <br>
                    </div>
                </div>

            </main>
        </from>
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
