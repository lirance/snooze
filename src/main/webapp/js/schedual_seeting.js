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


// app.controller('selectTimeCtrl',function ($scope,$http) {
//         $scope.users = {};
//         $scope.submitForm = function () {
//             $http({
//                 method:'post',
//                 url:'/snooze/manager/select/time',
//                 params:{
//                     "selectedTime":$scope.users.selectTime
//
//                 },
//                 headers: {
//                     'Content-Type': 'application/x-www-form-urlencoded'
//                 }
//
//             }).then(function(resp){
//                 if (resp.data === "true"){
//                     console.log(resp.data);
//                     alert("Time Selected");
//                     window.location.href="http://localhost:8080/group_setting_page.jsp";
//                 }
//             });
//         }
// });



app.controller('selectTimeCtrl',function ($scope,$http) {


    $scope.show = function() {
        var obj = document.getElementsByName("Time");
        $scope.check_val = [];
        var k;
        for(k in obj){
            if(obj[k].checked)
                $scope.check_val.push(obj[k].value);
        }
        console.log($scope.check_val);
        alert($scope.check_val);
        $http({
            method:'post',
            url:'/snooze/member/select/time',
            params:{
                "selectedTime":$scope.check_val

            },
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded'
            }

        }).then(function(resp){
            if (resp.data === "true"){
                console.log(resp.data);
                alert("Shift Submitted");
                window.location.href="http://localhost:8080/group_setting_page.jsp";
            } else if(resp.data === "false") {
                console.log('Email or Passowrd Error');
                alert("Error");
            }

        });
    };


});

app.controller('getGroupMemberCtrl',function ($scope,$http) {


    $http({
        method: 'GET',
        url: '/snooze/groupMember0809.json'

    }).then(function (resp) {
        // $scope.groups =JSON.parse(resp.data);
        $scope.Member0809 = resp.data;
        // alert($scope.ugi);
    });
    $http({
        method: 'GET',
        url: '/snooze/groupMember0910.json'

    }).then(function (resp) {
        // $scope.groups =JSON.parse(resp.data);
        $scope.Member0910 = resp.data;
        // alert($scope.ugi);
    });
    $http({
        method: 'GET',
        url: '/snooze/groupMember1011.json'

    }).then(function (resp) {
        // $scope.groups =JSON.parse(resp.data);
        $scope.Member1011 = resp.data;
        // alert($scope.ugi);
    });
    $http({
        method: 'GET',
        url: '/snooze/groupMember1112.json'

    }).then(function (resp) {
        // $scope.groups =JSON.parse(resp.data);
        $scope.Member1112 = resp.data;
        // alert($scope.ugi);
    });
    $http({
        method: 'GET',
        url: '/snooze/groupMember1213.json'

    }).then(function (resp) {
        // $scope.groups =JSON.parse(resp.data);
        $scope.Member1213 = resp.data;
        // alert($scope.ugi);
    });
    $http({
        method: 'GET',
        url: '/snooze/groupMember1314.json'

    }).then(function (resp) {
        // $scope.groups =JSON.parse(resp.data);
        $scope.Member1314 = resp.data;
        // alert($scope.ugi);
    });
    $http({
        method: 'GET',
        url: '/snooze/groupMember1415.json'

    }).then(function (resp) {
        // $scope.groups =JSON.parse(resp.data);
        $scope.Member1415 = resp.data;
        // alert($scope.ugi);
    });
    $http({
        method: 'GET',
        url: '/snooze/groupMember1516.json'

    }).then(function (resp) {
        // $scope.groups =JSON.parse(resp.data);
        $scope.Member1516 = resp.data;
        // alert($scope.ugi);
    });
    $http({
        method: 'GET',
        url: '/snooze/groupMember1617son'

    }).then(function (resp) {
        // $scope.groups =JSON.parse(resp.data);
        $scope.Member1617 = resp.data;
        // alert($scope.ugi);
    });
    $http({
        method: 'GET',
        url: '/snooze/groupMember1718.json'

    }).then(function (resp) {
        // $scope.groups =JSON.parse(resp.data);
        $scope.Member1718 = resp.data;
        // alert($scope.ugi);
    });
    $http({
        method: 'GET',
        url: '/snooze/groupMember1819.json'

    }).then(function (resp) {
        // $scope.groups =JSON.parse(resp.data);
        $scope.Member1819 = resp.data;
        // alert($scope.ugi);
    });

});



app.controller('gteUnfinishedCtrl',function ($scope,$http){


    $http({
        method:'GET',
        url:'/snooze/unfinishedStudent.json'

    }).then(function (resp)
    {
        // $scope.groups =JSON.parse(resp.data);
        $scope.UnStudents=resp.data;
        // alert($scope.ugi);
    });



});

app.controller('endCtrl',function ($scope,$http){


    $scope.submitForm = function () {
        // console.log('enter submitForm');
        $http({
            method:'post',
            url:'/snooze/endCtrl',
            params:{
                "command": "end"

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
                window.location.href="http://localhost:8080/main_page.jsp";

            }

        });
    }



});