<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="rapid" uri="http://www.rapid-framework.org.cn/rapid" %>


<html>
<head>
    <meta charset="UTF-8">
    <title></title>
    <style>
        body{background: url(/img/bg.jpg) no-repeat;background-size: 100% auto;width:100%;height:100%; }
        #t-seach{position:absolute;left:100px;width:450px;height:600px;}
        #head{color:#FFFFFF;font-size:26px;width:100%;height:20%;line-height:20%;display: flex;justify-content: center;align-items: center;}
        span{cursor:pointer;color: #FFFFFF;font-size: 22px;line-height:20%;height:20%;width:100%;display: flex;justify-content: center;align-items: center;}

        p{ border-bottom: 1px solid #FFFFFF;width:60%;height:8%;line-height:8%;text-align:center;display: flex;align-items: center;margin:auto auto;margin-top:5%;}
        input:-moz-placeholder {color: #FFFFFF;}
        input::-webkit-input-placeholder {  color: #FFFFFF;}

        input:-ms-input-placeholder { color: #FFFFFF;}
        input{border:hidden;background-color:rgba(87,102,158,0);}


        img{width:10%;float: left;margin-right:10px;}

        form{height:80%;margin:auto;background:rgba(87,102,158,0.5); border: 1px solid #000000;}
        button{ border: 1px solid #5a5a5a;width:100%;line-height:260%;border:0.5px solid #ffffff;border-radius:5px;display: flex;justify-content: center;align-items: center;margin-top:8%;}
        a{color:#FFFFFF;text-decoration: none;}


        .yz{
            width: 60%;
            height: 8%;
            line-height: 8%;
            margin: auto auto;
            color:#728d76;
        }
        .yz_code{
            float: right;
            width: 30%;
            display: flex;justify-content: center;align-items: center;
            height: 100%;
            cursor: pointer;


            background: #bfc8c1;
        }











    </style>
    <script type="text/javascript" src='/EasyUI/jquery.min.js'></script>
    <script type="text/javascript">
        function ff_click(){


        }


        $(function(){

            var aInput=document.getElementsByTagName("input");

            for(i=0;i<aInput.length;i++){


                aInput[i].style.color="#919392";
                aInput[i].onfocus=function(){
                    this.value="";
                    this.style.outline="none";
                    this.style.color="#000000";


                }



            }
            var again=document.getElementById("again");
            var login=document.getElementById("login");
            login.onclick=function(){
                login.style.border="1px solid #ffffff";
                login.style.background="#011c5d";

                for( var i=0;i<aInput.length;i++){

                    if(aInput[0].value==""){
                        aInput[0].style.color="#910e1b";
                        aInput[0].value="*请输入用户名";
                    };
                    if(aInput[1].value=="")
                    {
                        aInput[1].style.color="#910e1b";
                        aInput[1].value="*请输入密码";

                    };
                    if(again.value=="")
                    {
                        again.style.color="#910e1b";
                        again.value="*请输入验证码";

                    }





                }


            }
            function rnd(start,end){
                return Math.floor(Math.random()*(end-start+1))+start;
            }

            var str ="0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";

            // 生成6位数字验证码
            function code(){
                var arr = [];
                for(var i = 0;i<6;i++){
                    arr[i] = str.charAt(rnd(0,str.length-1));
                }
                // 将数组转化为字符串
                var res = arr.join("")
                $('.yz_code').html(res);
            }
            // 首次进入时展示的验证码
            code();

            $('#btn').click(function(event) {
                code();
            });
            var arr = [];
            var len = 6;
            for(var i = 0; i < len; i++){
                var num = rnd(48,122); // 58
                if ((num>=48&&num<=57)||(num>=65&&num<=90)||(num>=97&&num<=122)){
                    arr[i] = String.fromCharCode(num);
                }else{
                    // 如果不是有效ascii码，则增加一次循环
                    len++;
                }
            }

            console.log(arr.join(""));

        })



    </script>



</head>
<body>

<div id="t-seach">
    <div id="head">创新知识竞赛管理平台</div>

    <form action="#" method="post">
        <span id="head2">用户身份验证</span>


        <p><img src="/img/1.png"/><input type="text" placeholder="用户名"/>
        </p>

        <p><img src="/img/11.png"/><input type="text" placeholder="密码"/>
        </p>


        <div style="font-size: 14px;color: #919392;line-height: 8%;height:8%;margin-top:3%;text-align: center;">
            <input type="checkbox" name="rempass" />记住密码

            <a href="#" onclick="ff_click()" name="forgetpass"  style="margin-left:10px;color:#FFFFFF">忘记密码</a>

        </div>
        <div class="yz">

            <input type="text" id="again" name="again" placeholder="请输入验证码" style="width:60%;height:80%;border-bottom: 1px solid #FFFFFF;" />

            <div class="yz_code" id="btn"></div>
            <a href="/admin"><button type="button" style=" background:#002786;cursor: pointer;color:#FFFFFF;" id="login">登录</button></a>

        </div>



    </form>

</div>
<div style="position: absolute;bottom: 0px;font-size:12px;background-size: 100% auto;width:100%;text-align: center;">
    Copyright © 2011-2020  版权所有：西亚斯创新知识竞赛管理平台

</div>
</body>
</html>