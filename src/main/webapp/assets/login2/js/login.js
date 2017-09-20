$(function () {

    $('#switch_qlogin').click(function () {
        $('#switch_login').removeClass("switch_btn_focus").addClass('switch_btn');
        $('#switch_qlogin').removeClass("switch_btn").addClass('switch_btn_focus');
        $('#switch_bottom').animate({left: '0px', width: '70px'});
        $('#qlogin').css('display', 'none');
        $('#web_qr_login').css('display', 'block');

    });
    $('#switch_login').click(function () {

        $('#switch_login').removeClass("switch_btn").addClass('switch_btn_focus');
        $('#switch_qlogin').removeClass("switch_btn_focus").addClass('switch_btn');
        $('#switch_bottom').animate({left: '154px', width: '70px'});

        $('#qlogin').css('display', 'block');
        $('#web_qr_login').css('display', 'none');
    });
    if (getParam("a") == '0') {
        $('#switch_login').trigger('click');
    }

});

function logintab() {
    scrollTo(0);
    $('#switch_qlogin').removeClass("switch_btn_focus").addClass('switch_btn');
    $('#switch_login').removeClass("switch_btn").addClass('switch_btn_focus');
    $('#switch_bottom').animate({left: '154px', width: '96px'});
    $('#qlogin').css('display', 'none');
    $('#web_qr_login').css('display', 'block');

}


//根据参数名获得该参数 pname等于想要的参数名 
function getParam(pname) {
    var params = location.search.substr(1); // 获取参数 平且去掉？ 
    var ArrParam = params.split('&');
    if (ArrParam.length == 1) {
        //只有一个参数的情况 
        return params.split('=')[1];
    }
    else {
        //多个参数参数的情况
        for (var i = 0; i < ArrParam.length; i++) {
            if (ArrParam[i].split('=')[0] == pname) {
                return ArrParam[i].split('=')[1];
            }
        }
    }
}


var reMethod = "POST",
    pwdmin = 6;

$(document).ready(function () {

    $("#login_form_submit").click(function () {

        if ($("#username").val() == "") {
            $("#username").focus().css({
                border: "1px solid red",
                boxShadow: "0 0 2px red"
            });
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
            $("#userCues").html("<font color='red'><b>×密码不能为空</b></font>");
            return false;
        } else {
            $("password").css({
                border: "1px solid #D7D7D7",
                boxShadow: "none"
            });
        }

        var layerIdx = layer.load(3);
        $formlogin = $("#login_form");
        var datas = $formlogin.serialize();
        $.ajax({
            url: ctx + "/login",
            type: reMethod,
            data: datas,
            success: function (result) {
                if (result.success == false) {
                    $("#userCues").html("<font color='red'><b>×" + result.errorMsg + "</b></font>");
                    layer.close(layerIdx);
                    return false;
                } else {
                    layer.msg("登录成功！");
                    layer.close(layerIdx);
                    window.location.href=ctx+"/index";
                }
            },
            error: function (result) {
                layer.msg("请求失败，请联系网站管理员！");
                return false;
            }
        });

    });

    $('#reg').click(function () {

        if ($('#user').val() == "") {
            $('#user').focus().css({
                border: "1px solid red",
                boxShadow: "0 0 2px red"
            });
            $('#userCue').html("<font color='red'><b>×用户名不能为空</b></font>");
            return false;
        } else {
            $('#user').css({
                border: "1px solid #D7D7D7",
                boxShadow: "none"
            });
        }

        if ($('#user').val().length < 4 || $('#user').val().length > 16) {
            $('#user').focus().css({
                border: "1px solid red",
                boxShadow: "0 0 2px red"
            });
            $('#userCue').html("<font color='red'><b>×用户名位4-16字符</b></font>");
            return false;
        } else {
            $("#user").css({
                border: "1px solid #D7D7D7",
                boxShadow: "none"
            });
        }

        if ($('#passwd').val().length < pwdmin) {
            $('#passwd').focus().css({
                border: "1px solid red",
                boxShadow: "0 0 2px red"
            });
            $('#userCue').html("<font color='red'><b>×密码不能小于" + pwdmin + "位</b></font>");
            return false;
        } else {
            $("#passwd").css({
                border: "1px solid #D7D7D7",
                boxShadow: "none"
            });
        }
        if ($('#passwd2').val() != $('#passwd').val()) {
            $('#passwd2').focus().css({
                border: "1px solid red",
                boxShadow: "0 0 2px red"
            });
            $('#userCue').html("<font color='red'><b>×两次密码不一致！</b></font>");
            return false;
        } else {
            $("#passwd2").css({
                border: "1px solid #D7D7D7",
                boxShadow: "none"
            });
        }

        var email = /^(\w-*\.*)+@(\w-?)+(\.\w{2,})+$/;
        if (!email.test($("#email").val())) {
            $("#email").focus().css({
                border: "1px solid red",
                boxShadow: "0 0 2px red"
            });
            $("#userCue").html("<font color='red'><b>×邮箱格式不正确</b></font>");
            return false;
        } else {
            $('#email').css({
                border: "1px solid #D7D7D7",
                boxShadow: "none"
            });
        }

        if ($("#inputCode").val() == "") {
            $('#inputCode').focus().css({
                border: "1px solid red",
                boxShadow: "0 0 2px red"
            });
            $('#userCue').html("<font color='red'><b>×验证码不能为空</b></font>");
            return false;
        } else {
            $('#inputCode').css({
                border: "1px solid #D7D7D7",
                boxShadow: "none"
            });
        }
        var layerIdx = layer.load(3);
        $form = $("#regUser");
        var data = $form.serialize();
        $.ajax({
            url: ctx + "/addUser",
            type: reMethod,
            data: data,
            beforeSend: function (result) {
                layer.msg("正在处理请求，请稍后。。。。。");
            },
            success: function (result) {
                if (result.success == false) {
                    $('#userCue').html("<font color='red'><b>×" + result.errorMsg + "</b></font>");
                    layer.close(layerIdx);
                    return false;
                } else {
                    layer.alert('注册成功，正在跳转登录页面，请稍后。。。', {
                        icon: 2,
                        skin: 'layer-ext-moon' //该皮肤由layer.seaning.com友情扩展。关于皮肤的扩展规则，去这里查阅
                    });
                    window.location.href = ctx + "/index";
                }
            },
            error: function (result) {
                layer.alert('请求失败，请联系网站管理员！', {
                    icon: 2,
                    skin: 'layer-ext-moon' //该皮肤由layer.seaning.com友情扩展。关于皮肤的扩展规则，去这里查阅
                });
                return false;
            }
        });
    });

});