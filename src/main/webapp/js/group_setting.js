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
    });
    $scope.passMgroupID = function(IDID){
        $scope.passGroupID = IDID;
        $http({
            method:'post',
            url:'/snooze/group/passGroupID',
            params:{
                "passGroupID":$scope.passGroupID

            },

            headers: {
                'Content-Type': 'application/x-www-form-urlencoded'
            }
        }).then(function(resp){
                // console.log(resp.data);
                // window.location.href="http://localhost:8080/member_list_manger_page.jsp";
            if (resp.data === "true"){
                console.log(resp.data);
                window.location.href="http://localhost:8080/member_list_manger_page.jsp";
            }else if(resp.data === "false") {
                console.log('This group already exists');
            }
        });

    };
    $scope.passGgroupID = function(IDID){
        $scope.passGroupID = IDID;
        $http({
            method:'post',
            url:'/snooze/group/passGroupID',
            params:{
                "passGroupID":$scope.passGroupID

            },

            headers: {
                'Content-Type': 'application/x-www-form-urlencoded'
            }
        }).then(function(resp){

            if (resp.data === "showSchedule"){
                console.log(resp.data);
                window.location.href="http://localhost:8080/publish_menber_page_shedual.jsp";
            }else if(resp.data === "notChoose") {
                console.log('go to choose');
                window.location.href="http://localhost:8080/current_schedule_member_page.jsp";

            }else if(resp.data === "alreadyChoose" ){
                console.log('alreadyChoose');
                window.location.href="http://localhost:8080/chosing_finish_member.jsp";

            }else if(resp.data === "error"){
                alert("Error")
            }


        });

    }

});


app.controller('creatGroupCtrl',function ($scope,$http) {
    $scope.users = {};

    $scope.submitForm = function () {
        // console.log('enter submitForm');
        $http({
            method:'post',
            url:'/snooze/group/create',
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
                window.location.href="http://localhost:8080/create_schedule.jsp";


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
            url:'/snooze/group/join',
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



app.controller('groupMemberCtrl',function ($scope,$http){


    $http({
        method:'GET',
        url:'/snooze/groupMember.json'

    }).then(function (resp)
    {
        $scope.groupMember=resp.data;
        // alert($scope.ugi);
    });


});