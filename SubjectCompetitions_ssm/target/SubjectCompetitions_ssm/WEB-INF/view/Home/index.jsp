<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="rapid" uri="http://www.rapid-framework.org.cn/rapid" %>


<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>学科竞赛网首页</title>
    <link href="/css/public.css" rel="stylesheet">
    <link href="/css/index.css" rel="stylesheet">
    <script type="text/javascript" src="/js/index.js"></script>
    <script type="text/javascript">
        window.onload = function() {
            list();
            banner();
        }
    </script>
</head>

<body>
<!-- 网站顶部区域 -->
<div class="headerbox">
    <!-- 版心区域 -->
    <div class="header">
        <!-- 版心区域左侧 -->
        <div class="logo">
            <img src="/img/logo.png" class="fll">
            <div class="text">
                <span>专注于BTB工业品营销培训</span>
                <p>
                    致力于成为提供最优BTB营销培训解决方案的国内第一品牌
                </p>
            </div>
        </div>
        <!-- 版心区域右侧 登录|退出-->
        <div class="dl" id="dl">
            <a href="/login">登录</a> <i class="login-line">/</i> <a href="admin.html">后台</a>
        </div>
    </div>
</div>
<!-- 导航条 -->
<div class="navbox">
    <div class="nav">
        <div class="nav_l" id="nav_l"><span>课程</span></div>
        <!-- 下拉菜单 -->
        <div class="list" id="list">
            <ul class="l_list">
                <li><i>01</i>基础素养与试听课程
                    <div class="r_list">
                        <a href="#">·&nbsp;&nbsp;工业品大客户销售礼仪与自我修炼</a>
                        <a href="#">·&nbsp;&nbsp;2018年3月试听课程</a>
                    </div>
                </li>
                <li><i>02</i>实战技巧与大客户课程
                    <div class="r_list">
                        <a href="#">· &nbsp;&nbsp;工业品大客户营销策略与实战技巧</a>
                        <a href="#">· &nbsp;&nbsp;PSS 专业销售技巧</a>
                        <a href="#">· &nbsp;&nbsp;工业品大客户销售策略与客户维护</a>
                        <a href="#">· &nbsp;&nbsp;服务智胜-工业品大客户的服务营销</a>
                        <a href="#">· &nbsp;&nbsp;销售精英2天强化训练</a>
                    </div>
                </li>
                <li><i>03</i>渠道建设与谈判课程
                    <div class="r_list">
                        <a href="#">· &nbsp;&nbsp;双赢谈判策略与技能</a>
                        <a href="#">· &nbsp;&nbsp;动态销售谈判</a>
                        <a href="#">· &nbsp;&nbsp;谈判策略与技巧</a>
                        <a href="#">· &nbsp;&nbsp;渠道（经销商）开发与管理</a>
                        <a href="#">· &nbsp;&nbsp;以生意为导向的销售沟通与谈判</a>
                    </div>

                </li>
                <li><i>04</i>客户服务与账款催收课程
                    <div class="r_list">
                        <a href="#">· &nbsp;&nbsp;深度营销与客户关系管理</a>
                        <a href="#">· &nbsp;&nbsp;大客户售后服务与沟通技能</a>
                        <a href="#">· &nbsp;&nbsp;从客户满意到客户忠诚的服务技巧</a>
                        <a href="#">· &nbsp;&nbsp;销售谈判与专业回款技巧</a>
                        <a href="#">· &nbsp;&nbsp;以感动服务提升企业竞争力</a>
                    </div>
                </li>
                <li><i>05</i>团队与营销管控课程
                    <div class="r_list">
                        <a href="#">· &nbsp;&nbsp;销售主管2天强化训练营</a>
                        <a href="#">· &nbsp;&nbsp;营销职业规划与素养</a>
                        <a href="#">· &nbsp;&nbsp;打造高绩效的工业品营销团队</a>
                        <a href="#">· &nbsp;&nbsp;营销战略与策略升级</a>
                        <a href="#">· &nbsp;&nbsp;营销战略与市场情报研究</a>
                    </div>

                </li>
            </ul>
        </div>
        <div class="nav_r">
            <a href="index.html">首页</a>
            <a href="#">课程分类</a>
            <a href="#">解决方案</a>
            <a href="#">案例中心</a>
            <a href="#">新闻中心</a>
            <a href="#">讲师团队</a>
            <a href="#">相关内容</a>
        </div>
    </div>
</div>
<!-- 轮播图 -->
<div class="bannerbox">
    <ul class="banner" id="banner">
        <li style="display: block">
            <a href="#"><img src="/img/banner01.jpg"></a>
        </li>
        <li>
            <a href="#"><img src="/img/banner02.jpg"></a>
        </li>
        <li>
            <a href="#"><img src="/img/banner03.jpg"></a>
        </li>
        <li>
            <a href="#"><img src="/img/banner04.jpg"></a>
        </li>
    </ul>
    <!-- 轮播图底部图标 -->
    <ul id="btn">
        <li class="on"></li>
        <li></li>
        <li></li>
        <li>
        </li>
    </ul>
    <!-- 轮播图箭头图标 -->
    <a href="#" id="left"></a>
    <a href="#" id="right"></a>
</div>
</body>

</html>