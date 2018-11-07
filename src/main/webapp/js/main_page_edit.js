var app = angular.module('editProApp',[]);
app.controller('editProController',function ($scope,$http) {
    $scope.users = {};

    $scope.submitForm = function () {
        // console.log('enter submitForm');
        $http({
            method:'post',
            url:'/snooze/editProfile',
            params:{
                "newPassword":$scope.users.inputPassword,
                "newUsername":$scope.users.inputUsername
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
                alert("Edit Successful");
                window.location.href="http://localhost:8080/main_page.jsp";

            }


        });
    }

});