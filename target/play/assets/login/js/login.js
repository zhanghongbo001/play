$(document).ready(function () {
    $("#login_form_submit").click(function () {

        if ($("#username").val() == "") {
            $("#username").focus().css({
                border: "1px solid red",
                boxShadow: "0 0 2px red"
            });
            $("#userCues").css('display','block');
            $("#userCues").html("<font color='red'><b>×用户名不能为空</b></font>");
            return false;
        } else {
            $("#username").css({
                border: "1px solid #D7D7D7",
                boxShadow: "none"
            });
        }
        if ($("#password").val() == "") {
            $("#password").focus().css({
                border: "1px solid red",
                boxShadow: "0 0 2px red"
            });
            $("#userCues").css('display','block');
            $("#userCues").html("<font color='red'><b>×密码不能为空</b></font>");
            return false;
        } else {
            $("password").css({
                border: "1px solid #D7D7D7",
                boxShadow: "none"
            });
        }

        /*var layerIdx = layer.load(3);*/
        $formlogin = $("#login_form");
        var datas = $formlogin.serialize();
        $.ajax({
            url: ctx + "/login",
            type: "post",
            data: datas,
            success: function (result) {
                if (result.success == false) {
                    $("#userCues").css('display','block');
                    $("#userCues").html("<font color='red'><b>×" + result.errorMsg + "</b></font>");
                    return false;
                } else {
                    window.location.href=ctx+"/index";
                }
            },
            error: function (result) {
                alert("失败了！");
                return false;
            }
        });

    });
});