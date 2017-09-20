<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String url = request.getRequestURL().toString();
    url = url.substring(0, url.indexOf('/', url.indexOf("//") + 2));
    String context = request.getContextPath();
    url += context;
    application.setAttribute("ctx", url);
%>
<!DOCTYPE html>
<html>
<head>
    <title>后台系统（云排名）</title>
    <meta charset="utf-8">
    <link href="assets/login/css/home.css?v=2" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="assets/login/js/jquery-1.7.2.js"></script>
    <script type="text/javascript" src="assets/login/js/login.js"></script>
</head>
<body>
<div class="wrap">
    <div class="banner-show" id="js_ban_content">
        <div class="cell bns-01">
            <div class="con"></div>
        </div>
        <div class="cell bns-02" style="display:none;">
            <div class="con"></div>
        </div>
        <div class="cell bns-03" style="display:none;">
            <div class="con"><%--<a href="http://www.js-css.cn" target="_blank" class="banner-link"> <i>企业云</i></a>--%></div>
        </div>
    </div>
    <div class="banner-control" id="js_ban_button_box"><a href="javascript:;" class="left">左</a> <a href="javascript:;"
                                                                                                    class="right">右</a>
    </div>
    <script type="text/javascript">
        (function () {

            var defaultInd = 0;
            var list = $('#js_ban_content').children();
            var count = 0;
            var change = function (newInd, callback) {
                if (count) return;
                count = 2;
                $(list[defaultInd]).fadeOut(400, function () {
                    count--;
                    if (count <= 0) {
                        if (start.timer) window.clearTimeout(start.timer);
                        callback && callback();
                    }
                });
                $(list[newInd]).fadeIn(400, function () {
                    defaultInd = newInd;
                    count--;
                    if (count <= 0) {
                        if (start.timer) window.clearTimeout(start.timer);
                        callback && callback();
                    }
                });
            }

            var next = function (callback) {
                var newInd = defaultInd + 1;
                if (newInd >= list.length) {
                    newInd = 0;
                }
                change(newInd, callback);
            }

            var start = function () {
                if (start.timer) window.clearTimeout(start.timer);
                start.timer = window.setTimeout(function () {
                    next(function () {
                        start();
                    });
                }, 8000);
            }

            start();

            $('#js_ban_button_box').on('click', 'a', function () {
                var btn = $(this);
                if (btn.hasClass('right')) {
                    //next
                    next(function () {
                        start();
                    });
                }
                else {
                    //prev
                    var newInd = defaultInd - 1;
                    if (newInd < 0) {
                        newInd = list.length - 1;
                    }
                    change(newInd, function () {
                        start();
                    });
                }
                return false;
            });

        })();
    </script>
    <div class="container">
        <div class="register-box">
            <div class="reg-slogan"> 后台系统管理（云排名）</div>

            <div class="reg-form" id="js-form-mobile"><br>
                <br>
                <form action="" name="loginform" accept-charset="utf-8" id="login_form"
                      class="loginForm" method="post">
                    <div id="userCues" class="cue" style="padding-left: 95px; display: none;">
                        aaaa${result}
                    </div>
                    <br>
                    <div class="cell">
                        <input type="text" name="username" id="username" class="text" maxlength="11"
                               placeholder="用户名"/>
                    </div>
                    <div class="cell">
                        <input type="password" name="password" id="password" class="text" placeholder="密码"/>
                    </div>
                    <div class="bottom">
                        <input type="button" id="login_form_submit" style="width:328px;" class="button btn-green"
                               value="登录"/>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<script>window.ctx = "${ctx}";</script>
</body>
</html>

