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
            url:'/snooze/manager/enter/group',
            params:{
                "passGroupID":$scope.passGroupID

            },

            headers: {
                'Content-Type': 'application/x-www-form-urlencoded'
            }
        }).then(function(resp){
            switch(resp.data) {

                case '"unfinished"':

                    console.log(resp.data);
                    window.location.href="http://localhost:8080/member_list_manger_page.jsp";
                    break;
                case '"chose"':
                    //alert(resp.data);
                    console.log('show finished schedule');
                    window.location.href="http://localhost:8080/member_list_manager_produce.jsp";
                    break;
                case '"error"':

                    alert("Error");
                    break;
            }

        });

    };
    $scope.passGgroupID = function(IDID){
        $scope.passGroupID = IDID;
        $http({
            method:'post',
            url:'/snooze/member/enter/group',
            params:{
                "passGroupID":$scope.passGroupID

            },

            headers: {
                'Content-Type': 'application/x-www-form-urlencoded'
            }
        }).then(function(resp){


            switch(resp.data) {
                case '"showSchedule"':
                    $http({
                        method:'post',
                        url:'/snooze/member/schedule/show',
                        params:{
                        },
                        headers: {
                            'Content-Type': 'application/x-www-form-urlencoded'
                        }
                    }).then(function (resp) {
                        if (resp.data === "true") {
                            console.log(resp.data);
                            window.location.href ="http://localhost:8080/publish_menber_page_shedual.jsp";
                        }
                    });
                    // console.log(resp.data);
                    // window.location.href="http://localhost:8080/publish_menber_page_shedual.jsp";
                        break;
                case '"notChoose"':
                    //alert(resp.data);
                    console.log('go to choose');
                    window.location.href="http://localhost:8080/current_schedule_member_page.jsp";
                    break;
                case '"alreadyChoose"':
                    console.log('alreadyChoose');
                    window.location.href="http://localhost:8080/chosing_finish_member.jsp";
                break;
                case '"error"':

                    alert("Error");
                    break;
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
        url:'/snooze/generalMembers.json'

    }).then(function (resp)
    {
        $scope.allmembers=resp.data;
    });

    $scope.showManager = function() {
        $http({
            method:'post',
            url:'/snooze/manager/schedule/show',
            params:{

    },
        headers: {
            'Content-Type': 'application/x-www-form-urlencoded'
        }
        }).then(function (resp) {
            if (resp.data === "true") {
                console.log(resp.data);
                window.location.href ="http://localhost:8080/publish_manger_Already_page.jsp";
            }
        });
    }
});

