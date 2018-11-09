var app = angular.module('groupSetApp',[]);

app.controller('showGroupCtrl',function ($scope,$http){


    $http({
        method:'GET',
        url:'/snooze/groupManager.json'

    }).then(function (resp)
    {
       // $scope.groups =JSON.parse(resp.data);
        $scope.Mgropus=resp.data;
       // alert($scope.ugi);
    });

    $http({
        method:'GET',
        url:'/snooze/groupGeneral.json'

    }).then(function (resp)
    {
        // $scope.ugi =JSON.parse(resp.data);
        $scope.Ggroup=resp.data;
        // alert($scope.ugi);
    })
});


app.controller('creatGroupCtrl',function ($scope,$http) {
    $scope.users = {};

    $scope.submitForm = function () {
        // console.log('enter submitForm');
        $http({
            method:'post',
            url:'/snooze/groupCreate',
            params:{
                "inputGroupName":$scope.users.inputGroupName
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
                // alert("Join Group Success");
                alert("Create Group Success");
                window.location.href="http://localhost:8080/group_setting_page.jsp";


            }else if(resp.data === "false") {
                console.log('Email or Passowrd Error');
                alert("Group do not exist or You are manager for this group");
            }


        });
    }

});


app.controller('joinGroupCtrl',function ($scope,$http){
    $scope.users = {};

    $scope.submitForm = function () {
        // console.log('enter submitForm');
        $http({
            method:'post',
            url:'/snooze/groupJoin',
            params:{
                "inputGroupId":$scope.users.inputGroupId
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
                alert("Join Group Success");
                window.location.href="http://localhost:8080/group_setting_page.jsp";




            }else if(resp.data === "false") {
                console.log('This group already exists');
                alert("You have already in this group or This group does not exists");
            }


        });
    }
});
