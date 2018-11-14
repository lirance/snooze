var app = angular.module('scheduleApp',[]);
app.controller('createScheduleCtrl',function ($scope,$http) {
    $scope.users = {};
    $scope.submitForm = function () {
        $http({
            method:'post',
            url:'/snooze/manager/create/schedual',
            params:{
                "inputSchedualName":$scope.users.inputSchedualName

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
                alert("Create Success");
                window.location.href="http://localhost:8080/group_setting_page.jsp";

            }
        });
    }
});


app.controller('selectTimeCtrl',function ($scope,$http) {
        $scope.users = {};
        $scope.submitForm = function () {
            $http({
                method:'post',
                url:'/snooze/manager/select/time',
                params:{
                    "selectedTime":$scope.users.selectTime

                },
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }

            }).then(function(resp){
                if (resp.data === "true"){
                    console.log(resp.data);
                    alert("Time Selected");
                    window.location.href="http://localhost:8080/group_setting_page.jsp";
                }
            });
        }
});







