<html>
<body>
<head>
    <title></title>
    <script src="/resources/js/jquery-1.10.2.min.js"></script>
</head>
<h2>Hello World!</h2>
<input type="button" onclick="getTestUser()" value="getdata"/><input type="text" id="testUser"/>
<script>    function getTestUser() {
    $.ajax({
        url: "/snooze/test/testUser.json", type: "get", success: function (data) {
            $('#testUser').val(data);
        }
    })
}</script>

</body>
</html>
