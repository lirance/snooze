var app = angular.module('scheduleApp',[]);
app.controller('createScheduleCtrl',function ($scope,$http) {
    $scope.users = {};
    $scope.submitForm = function () {
        $http({
            method:'post',
            url:'/snooze/create/schedule',
            params:{
                "inputScheduleName":$scope.users.inputScheduleName

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
                window.location.href="http://localhost:8080/member_list_manger_page.jsp";

            }
        });
    }
});





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

app.controller('saveSchedule',function ($scope,$http) {

    $scope.showManager = function() {
        $http({
            method: 'GET',
            url: '/snooze/manager/schedule/show'

        }).then(function (resp) {
            if (resp.data === "true") {
                console.log(resp.data);
                window.location.href = "http://localhost:8080/publish_menber_page_shedual.jsp";
            }
        });
    }


});




app.controller('getUnfinishedCtrl',function ($scope,$http){


    $http({
        method:'GET',
        url:'/snooze/group/show/membersNotChoosed.json'

    }).then(function (resp)
    {

        $scope.NotChoosed =resp.data;


    });
    $http({
        method: 'GET',
        url: '/snooze/manager/schedule/show'

    }).then(function (resp) {

        $scope.showSche = resp.data;

    });

});

app.controller('endCtrl',function ($scope,$http){


    $scope.submitForm = function () {
        // console.log('enter submitForm');
        $http({
            method:'post',
            url:'/snooze/manager/schedule/generate',
            params:{


            },
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded'
            }

        }).then(function(resp){
            if (resp.data === "true"){
                $http({
                    method: 'GET',
                    url: '/snooze/manager/schedule/show'

                }).then(function (resp) {
                    console.log(resp.data);
                    console.log(resp.data);
                    window.location.href="http://localhost:8080/group_setting_page.jsp";

                });

            }else if(resp.data === "false") {
                console.log('');
                alert("Error");
            }

        });
    };

});


app.controller('showPersonCtrl',function ($scope,$http) {

    $scope.show = function() {
        $http({
            method: 'GET',
            url: '/snooze/member/schedule/show'

        }).then(function (resp) {
            if (resp.data === "true") {
                console.log(resp.data);
                window.location.href = "http://localhost:8080/publish_menber_page_shedual.jsp";
            }else if(resp.data === "false" ){
                alert("Time of Selecting Schedule Unfinished")
            }
        });
    }
});