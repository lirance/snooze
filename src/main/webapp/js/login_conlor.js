var app = angular.module('myApp',[]);

app.controller('loginController',function ($scope,$http) {
    $scope.users = {};
    $scope.Emails = $scope.users.inputEmail;

    $scope.submitForm = function () {
        // console.log('enter submitForm');
        $http({
            method:'post',
            url:'/snooze/logIn',
            params:{
                 "inputEmail":$scope.users.inputEmail,
                 "inputPassword":$scope.users.inputPassword
                // "resp":$scope.resp

            },

            headers: {
                'Content-Type': 'application/x-www-form-urlencoded'
            }
            // transformRequest: function (params) {
            //     return $.param(params);
            // }
        }).then(function(resp){
            if (resp.data === "true"){
                console.log(resp.data);
                //alert("Signin Success");
                window.location.href="http://localhost:8080/main_page.jsp";



            }else if(resp.data === "false") {
                console.log('Email or Passowrd Error');
                alert("Email or Passoword error");
            }


        });
    }
});



app.controller('regController',function ($scope,$http) {
    $scope.users = {};

    $scope.submitForm = function () {
        // console.log('enter submitForm');
        $http({
            method:'post',
            url:'/snooze/signUp',
            params:{
                "inputEmail":$scope.users.inputEmail,
                "inputPassword":$scope.users.inputPassword,
                "resp":$scope.resp,
                "inputUsername":$scope.users.inputUsername

            },

            headers: {
                'Content-Type': 'application/x-www-form-urlencoded'
            }
            // transformRequest: function (params) {
            //     return $.param(params);
            // }
        }).then(function(resp){
            if (resp.data === "true"){
                console.log(resp.data);

                window.location.href="http://localhost:8080/login_page.jsp";


            }else if(resp.data === "false") {
                console.log('Email or Passowrd Error', resp.data);
                alert("Email had been occupied ");
            }


        });
    }
});

