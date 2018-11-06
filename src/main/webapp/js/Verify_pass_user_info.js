var app = angular.module('mainVefiApp',[]);

app.controller('VerifyCtrl',function ($scope,$http) {
    $scope.users = {};

    $scope.submitForm = function () {

        $http({
            method:'post',
            url:'/snooze/editProfile',
            params:{
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

                window.location.href="http://localhost:8080/edit_profile.jsp";



            }else if(resp.data === "false") {
                console.log('Email or Passowrd Error');
                alert("Passoword error");
            }


        });
    }
});
